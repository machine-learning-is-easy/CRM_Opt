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

namespace {

void require(bool condition, const std::string& message) {
  if (!condition) {
    throw std::runtime_error(message);
  }
}

reservoir::Wells make_rate_balanced_wells(const reservoir::Grid& grid) {
  reservoir::Wells wells;
  wells.add(reservoir::Well{
      "INJ",
      reservoir::WellType::Injector,
      reservoir::WellControl::Rate,
      grid.index(0, 0, 0),
      0.50,
      0.10,
      0.0,
      1.0,
  });
  wells.add(reservoir::Well{
      "PROD",
      reservoir::WellType::Producer,
      reservoir::WellControl::Rate,
      grid.index(4, 0, 0),
      -0.50,
      0.10,
      0.0,
      1.0,
  });
  wells.validateForGrid(grid);
  return wells;
}

} // namespace

int main() {
  try {
    const reservoir::Grid grid(5, 1, 1, 10.0, 10.0, 2.0);
    const reservoir::RockProps rock = reservoir::RockProps::uniform(grid, 0.25, 100.0);
    const reservoir::Fluid fluid(1.0, 3.0, reservoir::CoreyParams{0.20, 0.20, 1.0, 1.0, 2.0, 2.0});
    const reservoir::Wells wells = make_rate_balanced_wells(grid);

    reservoir::SimulatorConfig config;
    config.initialPressure = 200.0;
    config.initialWaterSaturation = 0.20;
    config.endTime = 1.00;
    config.maxTimeStep = 0.10;
    config.outputInterval = 1.00;
    config.cfl = 0.35;

    reservoir::Simulator simulator(grid, rock, fluid, wells, config);
    const reservoir::MassAccounting initial = simulator.accounting();
    const reservoir::SimulatorReport report = simulator.run();
    const reservoir::MassAccounting final = report.accounting;

    require(report.finalState.time > 0.0, "simulation time did not advance");
    require(rock.totalPoreVolume(grid) > 0.0, "pore volume must be positive");

    const double water_balance = final.currentWater - initial.currentWater -
        final.cumulativeWaterInjected + final.cumulativeWaterProduced;
    const double oil_balance = final.currentOil - initial.currentOil -
        final.cumulativeOilInjected + final.cumulativeOilProduced;
    const double scale = std::max(1.0, final.cumulativeWaterInjected + final.cumulativeOilProduced);

    require(std::abs(water_balance) / scale < 5.0e-6,
            "water inventory change does not match injected minus produced water");
    require(std::abs(oil_balance) / scale < 5.0e-6,
            "oil inventory change does not match injected minus produced oil");
    require(std::abs(final.waterBalanceError) / scale < 5.0e-6,
            "reported water balance error is too large");
    require(std::abs(final.oilBalanceError) / scale < 5.0e-6,
            "reported oil balance error is too large");
    require(final.currentWater >= -1.0e-10, "water inventory became negative");
    require(final.currentOil >= -1.0e-10, "oil inventory became negative");
    require(std::abs((final.currentWater + final.currentOil) - rock.totalPoreVolume(grid)) /
                rock.totalPoreVolume(grid) < 1.0e-8,
            "phase inventories no longer sum to pore volume");

    reservoir::Wells unbalanced;
    unbalanced.add(reservoir::Well{
        "ONLY_INJECTOR",
        reservoir::WellType::Injector,
        reservoir::WellControl::Rate,
        grid.index(0, 0, 0),
        0.50,
        0.10,
        0.0,
        1.0,
    });
    bool rejectedUnbalancedRates = false;
    try {
      reservoir::Simulator invalid(grid, rock, fluid, unbalanced, config);
      invalid.run();
    } catch (const std::runtime_error& error) {
      rejectedUnbalancedRates =
          std::string(error.what()).find("zero net reservoir rate") != std::string::npos;
    }
    require(rejectedUnbalancedRates,
            "unbalanced all-rate incompressible controls should be rejected");
  } catch (const std::exception& ex) {
    std::cerr << "test_mass_balance failed: " << ex.what() << '\n';
    return EXIT_FAILURE;
  }

  return EXIT_SUCCESS;
}
