#pragma once

#include "resim/Fluid.h"
#include "resim/Grid.h"
#include "resim/RockProps.h"
#include "resim/Wells.h"

#include <cstddef>
#include <string>
#include <vector>

namespace reservoir {

struct SimulatorConfig {
  double initialPressure = 0.0;
  double initialWaterSaturation = 0.2;
  double startTime = 0.0;
  double endTime = 1.0;
  double maxTimeStep = 1.0;
  double minTimeStep = 1.0e-12;
  double outputInterval = 1.0;
  double cfl = 0.5;
  double pressureTolerance = 1.0e-10;
  std::size_t pressureMaxIterations = 10000;
  bool storeInitialSnapshot = true;
  bool storeFinalSnapshot = true;
};

struct ReservoirState {
  double time = 0.0;
  std::vector<double> pressure;
  std::vector<double> waterSaturation;
};

struct WellReport {
  std::string name;
  WellType type = WellType::Producer;
  std::size_t cell = 0;
  double bhp = 0.0;
  double totalRate = 0.0;
  double waterRate = 0.0;
  double oilRate = 0.0;
  double cumulativeWaterInjected = 0.0;
  double cumulativeWaterProduced = 0.0;
  double cumulativeOilInjected = 0.0;
  double cumulativeOilProduced = 0.0;
};

struct MassAccounting {
  double initialWater = 0.0;
  double initialOil = 0.0;
  double currentWater = 0.0;
  double currentOil = 0.0;
  double cumulativeWaterInjected = 0.0;
  double cumulativeWaterProduced = 0.0;
  double cumulativeOilInjected = 0.0;
  double cumulativeOilProduced = 0.0;
  double waterBalanceError = 0.0;
  double oilBalanceError = 0.0;
};

struct SimulatorSnapshot {
  std::size_t step = 0;
  double time = 0.0;
  double dt = 0.0;
  ReservoirState state;
  std::vector<WellReport> wells;
  MassAccounting accounting;
};

struct SimulatorReport {
  ReservoirState finalState;
  std::vector<SimulatorSnapshot> snapshots;
  MassAccounting accounting;
  std::size_t pressureIterations = 0;
  double pressureResidualNorm = 0.0;
  bool pressureConverged = true;
};

class Simulator {
 public:
  Simulator(
      const Grid& grid,
      const RockProps& rock,
      const Fluid& fluid,
      const Wells& wells,
      SimulatorConfig config = SimulatorConfig{});

  const ReservoirState& state() const noexcept;
  const MassAccounting& accounting() const noexcept;
  const std::vector<SimulatorSnapshot>& snapshots() const noexcept;

  void reset();
  SimulatorSnapshot step(double dt);
  SimulatorReport run();

 private:
  Grid grid_;
  RockProps rock_;
  Fluid fluid_;
  Wells wells_;
  SimulatorConfig config_;
  ReservoirState state_;
  MassAccounting accounting_;
  std::vector<SimulatorSnapshot> snapshots_;
  std::vector<WellReport> wellReports_;
  std::size_t stepIndex_ = 0;
  std::size_t pressureIterations_ = 0;
  double pressureResidualNorm_ = 0.0;
  bool pressureConverged_ = true;
};

} // namespace reservoir
