#include "resim/Fluid.h"
#include "resim/Grid.h"
#include "resim/RockProps.h"
#include "resim/Simulator.h"
#include "resim/Wells.h"

#include <cmath>
#include <cstdlib>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

namespace {

constexpr std::size_t kCells = 20;
constexpr double kDarcyVelocity = 0.25;
constexpr double kEndTime = 1.0;

void require(bool condition, const std::string& message) {
  if (!condition) {
    throw std::runtime_error(message);
  }
}

reservoir::Wells make_wells(const reservoir::Grid& grid) {
  reservoir::Wells wells;
  wells.add(reservoir::Well{
      "INJ",
      reservoir::WellType::Injector,
      reservoir::WellControl::Rate,
      grid.index(0, 0, 0),
      kDarcyVelocity,
      0.10,
      0.0,
      1.0,
  });
  wells.add(reservoir::Well{
      "PROD",
      reservoir::WellType::Producer,
      reservoir::WellControl::Rate,
      grid.index(kCells - 1, 0, 0),
      -kDarcyVelocity,
      0.10,
      0.0,
      1.0,
  });
  wells.validateForGrid(grid);
  return wells;
}

double shock_saturation(const reservoir::Fluid& fluid, double sw_initial, double sw_injected) {
  double best_sw = sw_initial;
  double maximum_chord_slope = -1.0;
  constexpr int samples = 10000;
  const double f_initial = fluid.fractionalFlowWater(sw_initial);
  for (int sample = 1; sample <= samples; ++sample) {
    const double sw = sw_initial + (sw_injected - sw_initial) * static_cast<double>(sample) / samples;
    const double chord = (fluid.fractionalFlowWater(sw) - f_initial) / (sw - sw_initial);
    if (chord > maximum_chord_slope) {
      maximum_chord_slope = chord;
      best_sw = sw;
    }
  }
  return best_sw;
}

double measured_front_location(const std::vector<double>& sw, double threshold) {
  for (std::size_t i = 0; i < sw.size(); ++i) {
    if (sw[i] < threshold) {
      return static_cast<double>(i);
    }
  }
  return static_cast<double>(sw.size());
}

} // namespace

int main() {
  try {
    const reservoir::Grid grid(kCells, 1, 1, 1.0, 1.0, 1.0);
    const reservoir::RockProps rock = reservoir::RockProps::uniform(grid, 0.25, 100.0);
    const reservoir::Fluid fluid(1.0, 2.0, reservoir::CoreyParams{0.20, 0.20, 1.0, 1.0, 2.0, 2.0});
    const reservoir::Wells wells = make_wells(grid);

    reservoir::SimulatorConfig config;
    config.initialPressure = 200.0;
    config.initialWaterSaturation = 0.20;
    config.endTime = kEndTime;
    config.maxTimeStep = 0.10;
    config.outputInterval = kEndTime;
    config.cfl = 0.40;
    config.pressureMaxIterations = 2000;

    reservoir::Simulator simulator(grid, rock, fluid, wells, config);
    const reservoir::SimulatorReport report = simulator.run();
    require(report.pressureConverged, "pressure solve did not converge during Buckley-Leverett run");

    const std::vector<double>& sw = report.finalState.waterSaturation;
    require(sw.size() == kCells, "unexpected saturation vector size for 1D Buckley-Leverett case");

    const double sw_initial = 0.20;
    const double sw_injected = 0.80;
    require(sw.front() > 0.35, "injection cell did not become water enriched");
    require(sw.back() < 0.25, "production end was swept too early for this short run");

    for (std::size_t i = 1; i < sw.size(); ++i) {
      require(sw[i] <= sw[i - 1] + 2.0e-3,
              "1D water saturation profile should be non-increasing away from the injector");
      require(sw[i] >= sw_initial - 1.0e-10, "water saturation fell below connate water");
      require(sw[i] <= sw_injected + 1.0e-10, "water saturation exceeded mobile upper bound");
    }

    const double shock_sw = shock_saturation(fluid, sw_initial, sw_injected);
    const double shock_speed = fluid.fractionalFlowWaterDerivative(shock_sw) * kDarcyVelocity / 0.25;
    const double expected_front_cells = shock_speed * config.endTime / grid.dx();
    const double measured_front_cells = measured_front_location(sw, 0.30);

    require(std::abs(measured_front_cells - expected_front_cells) <= 3.0,
            "numerical Buckley-Leverett front is too far from analytical shock estimate: measured=" +
                std::to_string(measured_front_cells) + ", expected=" +
                std::to_string(expected_front_cells) + ", shock_sw=" +
                std::to_string(shock_sw));
  } catch (const std::exception& ex) {
    std::cerr << "test_buckley_leverett failed: " << ex.what() << '\n';
    return EXIT_FAILURE;
  }

  return EXIT_SUCCESS;
}
