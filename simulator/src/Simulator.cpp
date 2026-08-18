#include "resim/Simulator.h"

#include "resim/LinearSolver.h"

#include <algorithm>
#include <array>
#include <cmath>
#include <limits>
#include <stdexcept>
#include <string>
#include <vector>

namespace reservoir {
namespace {

constexpr double kTiny = 1.0e-30;

struct Connection {
  std::size_t cell1 = 0;
  std::size_t cell2 = 0;
  double geometryTransmissibility = 0.0;
};

struct ActiveWell {
  std::string name;
  WellType type = WellType::Producer;
  WellControl control = WellControl::Rate;
  std::size_t cell = 0;
  double target = 0.0;
  double wellIndex = 0.0;
  double injectionWaterSaturation = 1.0;
};

struct FlowDiagnostics {
  std::vector<double> connectionTotalFlux;
  std::vector<double> wellTotalRate;
  std::vector<double> wellWaterRate;
  std::vector<double> wellOilRate;
  std::vector<double> cellOutflowCapacity;
};

struct PressureResult {
  LinearSolverResult solve;
  bool gaugeApplied = false;
};

constexpr std::array<Direction, 3> kForwardDirections = {
    Direction::XPlus,
    Direction::YPlus,
    Direction::ZPlus,
};

static double clamp01(double value) noexcept {
  return std::clamp(value, 0.0, 1.0);
}

static double harmonic(double a, double b) noexcept {
  if (a <= 0.0 || b <= 0.0) {
    return 0.0;
  }
  return 2.0 * a * b / (a + b);
}

static double faceArea(const Grid& grid, Direction direction) {
  switch (direction) {
    case Direction::XMinus:
    case Direction::XPlus:
      return grid.dy() * grid.dz();
    case Direction::YMinus:
    case Direction::YPlus:
      return grid.dx() * grid.dz();
    case Direction::ZMinus:
    case Direction::ZPlus:
      return grid.dx() * grid.dy();
  }
  throw std::logic_error("unhandled grid direction");
}

static double centerDistance(const Grid& grid, Direction direction) {
  switch (direction) {
    case Direction::XMinus:
    case Direction::XPlus:
      return grid.dx();
    case Direction::YMinus:
    case Direction::YPlus:
      return grid.dy();
    case Direction::ZMinus:
    case Direction::ZPlus:
      return grid.dz();
  }
  throw std::logic_error("unhandled grid direction");
}

static double directionalPermeability(
    const RockProps& rock,
    std::size_t cell,
    Direction direction) {
  switch (direction) {
    case Direction::XMinus:
    case Direction::XPlus:
      return rock.permeabilityX(cell);
    case Direction::YMinus:
    case Direction::YPlus:
      return rock.permeabilityY(cell);
    case Direction::ZMinus:
    case Direction::ZPlus:
      return rock.permeabilityZ(cell);
  }
  throw std::logic_error("unhandled grid direction");
}

static std::vector<Connection> buildConnections(const Grid& grid, const RockProps& rock) {
  std::vector<Connection> connections;
  connections.reserve(grid.cellCount() * 3);
  for (std::size_t cell = 0; cell < grid.cellCount(); ++cell) {
    for (Direction direction : kForwardDirections) {
      const auto neighbor = grid.neighbor(cell, direction);
      if (!neighbor.has_value()) {
        continue;
      }
      Connection connection;
      connection.cell1 = cell;
      connection.cell2 = *neighbor;
      const double k = harmonic(
          directionalPermeability(rock, connection.cell1, direction),
          directionalPermeability(rock, connection.cell2, direction));
      connection.geometryTransmissibility =
          k * faceArea(grid, direction) / centerDistance(grid, direction);
      connections.push_back(connection);
    }
  }
  return connections;
}

static std::vector<double> poreVolumes(const Grid& grid, const RockProps& rock) {
  std::vector<double> values(grid.cellCount(), 0.0);
  for (std::size_t cell = 0; cell < grid.cellCount(); ++cell) {
    values[cell] = rock.poreVolume(grid, cell);
    if (values[cell] <= 0.0) {
      throw std::runtime_error("cell pore volume must be positive");
    }
  }
  return values;
}

static std::vector<ActiveWell> buildWells(
    const Grid& grid,
    const RockProps& rock,
    const Wells& wells) {
  std::vector<ActiveWell> active;
  active.reserve(wells.size());
  for (const Well& well : wells.all()) {
    if (!grid.containsCell(well.cell)) {
      throw std::runtime_error("well '" + well.name + "' references a cell outside the grid");
    }
    ActiveWell item;
    item.name = well.name;
    item.type = well.type;
    item.control = well.control;
    item.cell = well.cell;
    item.target = well.target;
    item.injectionWaterSaturation = clamp01(well.waterSaturation);
    item.wellIndex = peacemanWellIndex(grid, rock, well.cell, well.radius, well.skin);
    active.push_back(item);
  }
  return active;
}

static double signedRateTarget(const ActiveWell& well) {
  const double magnitude = std::abs(well.target);
  return wellSign(well.type) * magnitude;
}

static MassAccounting massFromState(
    const Grid& grid,
    const RockProps& rock,
    const ReservoirState& state,
    const MassAccounting& cumulative) {
  MassAccounting accounting = cumulative;
  accounting.currentWater = 0.0;
  accounting.currentOil = 0.0;
  for (std::size_t cell = 0; cell < grid.cellCount(); ++cell) {
    const double pv = rock.poreVolume(grid, cell);
    const double sw = clamp01(state.waterSaturation[cell]);
    accounting.currentWater += pv * sw;
    accounting.currentOil += pv * (1.0 - sw);
  }
  accounting.waterBalanceError = accounting.currentWater - accounting.initialWater -
      accounting.cumulativeWaterInjected + accounting.cumulativeWaterProduced;
  accounting.oilBalanceError = accounting.currentOil - accounting.initialOil -
      accounting.cumulativeOilInjected + accounting.cumulativeOilProduced;
  return accounting;
}

static void addCumulative(double phaseVolume, double& injected, double& produced) {
  if (phaseVolume >= 0.0) {
    injected += phaseVolume;
  } else {
    produced += -phaseVolume;
  }
}

static void enforceGauge(SparseMatrix& matrix, std::vector<double>& rhs, double pressure) {
  for (std::size_t row = 1; row < matrix.rows(); ++row) {
    const double coefficient = matrix.get(row, 0);
    if (coefficient != 0.0) {
      rhs[row] -= coefficient * pressure;
      matrix.set(row, 0, 0.0);
    }
  }
  std::vector<SparseMatrix::Entry> gaugeRow = matrix.rowEntries(0);
  for (const SparseMatrix::Entry& entry : gaugeRow) {
    matrix.set(0, entry.column, 0.0);
  }
  matrix.set(0, 0, 1.0);
  rhs[0] = pressure;
}

static PressureResult solvePressure(
    const Fluid& fluid,
    const std::vector<Connection>& connections,
    const std::vector<ActiveWell>& wells,
    const ReservoirState& state,
    const SimulatorConfig& config) {
  SparseMatrix matrix(state.pressure.size());
  std::vector<double> rhs(state.pressure.size(), 0.0);
  bool hasPressureConstraint = false;

  for (const Connection& connection : connections) {
    const double mobility = harmonic(
        fluid.totalMobility(state.waterSaturation[connection.cell1]),
        fluid.totalMobility(state.waterSaturation[connection.cell2]));
    const double transmissibility = connection.geometryTransmissibility * mobility;
    matrix.add(connection.cell1, connection.cell1, transmissibility);
    matrix.add(connection.cell2, connection.cell2, transmissibility);
    matrix.add(connection.cell1, connection.cell2, -transmissibility);
    matrix.add(connection.cell2, connection.cell1, -transmissibility);
  }

  for (const ActiveWell& well : wells) {
    if (well.control == WellControl::BottomHolePressure) {
      const double coefficient = well.wellIndex * fluid.totalMobility(state.waterSaturation[well.cell]);
      matrix.add(well.cell, well.cell, coefficient);
      rhs[well.cell] += coefficient * well.target;
      hasPressureConstraint = true;
    } else {
      rhs[well.cell] += signedRateTarget(well);
    }
  }

  PressureResult result;
  if (!hasPressureConstraint && !state.pressure.empty()) {
    double netRate = 0.0;
    double absoluteRate = 0.0;
    for (const ActiveWell& well : wells) {
      const double rate = signedRateTarget(well);
      netRate += rate;
      absoluteRate += std::abs(rate);
    }
    const double balanceTolerance = 1.0e-12 * std::max(1.0, absoluteRate);
    if (std::abs(netRate) > balanceTolerance) {
      throw std::runtime_error(
          "all-rate incompressible well controls must have zero net reservoir rate");
    }
    enforceGauge(matrix, rhs, state.pressure.front());
    result.gaugeApplied = true;
  }

  LinearSolverOptions options;
  options.maxIterations = config.pressureMaxIterations;
  options.tolerance = config.pressureTolerance;
  options.useJacobiPreconditioner = true;
  result.solve = LinearSolver::solveJacobiPcg(matrix, rhs, options, state.pressure);
  return result;
}

static FlowDiagnostics computeFluxes(
    const Fluid& fluid,
    const std::vector<Connection>& connections,
    const std::vector<ActiveWell>& wells,
    const ReservoirState& state) {
  FlowDiagnostics flow;
  flow.connectionTotalFlux.assign(connections.size(), 0.0);
  flow.wellTotalRate.assign(wells.size(), 0.0);
  flow.wellWaterRate.assign(wells.size(), 0.0);
  flow.wellOilRate.assign(wells.size(), 0.0);
  flow.cellOutflowCapacity.assign(state.pressure.size(), 0.0);

  for (std::size_t i = 0; i < connections.size(); ++i) {
    const Connection& connection = connections[i];
    const double mobility = harmonic(
        fluid.totalMobility(state.waterSaturation[connection.cell1]),
        fluid.totalMobility(state.waterSaturation[connection.cell2]));
    const double flux = -connection.geometryTransmissibility * mobility *
        (state.pressure[connection.cell2] - state.pressure[connection.cell1]);
    flow.connectionTotalFlux[i] = flux;
    if (flux >= 0.0) {
      flow.cellOutflowCapacity[connection.cell1] += flux;
    } else {
      flow.cellOutflowCapacity[connection.cell2] += -flux;
    }
  }

  for (std::size_t i = 0; i < wells.size(); ++i) {
    const ActiveWell& well = wells[i];
    double totalRate = signedRateTarget(well);
    if (well.control == WellControl::BottomHolePressure) {
      totalRate = well.wellIndex * fluid.totalMobility(state.waterSaturation[well.cell]) *
          (well.target - state.pressure[well.cell]);
    }
    const double waterFraction = totalRate >= 0.0
        ? well.injectionWaterSaturation
        : fluid.fractionalFlowWater(state.waterSaturation[well.cell]);
    flow.wellTotalRate[i] = totalRate;
    flow.wellWaterRate[i] = totalRate * waterFraction;
    flow.wellOilRate[i] = totalRate * (1.0 - waterFraction);
    if (totalRate < 0.0) {
      flow.cellOutflowCapacity[well.cell] += -totalRate;
    }
  }
  return flow;
}

static double cflLimitedDt(
    const Fluid& fluid,
    const std::vector<double>& poreVolume,
    const FlowDiagnostics& flow,
    double cfl,
    double requestedDt) {
  double maximumWaveSpeed = 1.0;
  constexpr int derivativeSamples = 256;
  const double lowerSaturation = fluid.corey().connateWater;
  const double upperSaturation = 1.0 - fluid.corey().residualOil;
  for (int sample = 0; sample <= derivativeSamples; ++sample) {
    const double fraction = static_cast<double>(sample) / derivativeSamples;
    const double saturation =
        lowerSaturation + fraction * (upperSaturation - lowerSaturation);
    maximumWaveSpeed = std::max(
        maximumWaveSpeed,
        std::abs(fluid.fractionalFlowWaterDerivative(saturation)));
  }

  double dt = requestedDt;
  for (std::size_t cell = 0; cell < poreVolume.size(); ++cell) {
    if (flow.cellOutflowCapacity[cell] > kTiny) {
      dt = std::min(
          dt,
          cfl * poreVolume[cell] /
              (flow.cellOutflowCapacity[cell] * maximumWaveSpeed));
    }
  }
  return dt;
}

static std::vector<WellReport> reportsFromRates(
    const std::vector<ActiveWell>& wells,
    const FlowDiagnostics& flow,
    const ReservoirState& state,
    const std::vector<WellReport>& cumulative) {
  std::vector<WellReport> reports;
  reports.reserve(wells.size());
  for (std::size_t i = 0; i < wells.size(); ++i) {
    WellReport report = cumulative[i];
    report.name = wells[i].name;
    report.type = wells[i].type;
    report.cell = wells[i].cell;
    report.bhp = wells[i].control == WellControl::BottomHolePressure
        ? wells[i].target
        : state.pressure[wells[i].cell];
    report.totalRate = flow.wellTotalRate[i];
    report.waterRate = flow.wellWaterRate[i];
    report.oilRate = flow.wellOilRate[i];
    reports.push_back(report);
  }
  return reports;
}

static void validateConfig(const SimulatorConfig& config) {
  if (config.endTime < config.startTime) {
    throw std::runtime_error("simulator endTime must be greater than or equal to startTime");
  }
  if (config.maxTimeStep <= 0.0 || config.minTimeStep <= 0.0) {
    throw std::runtime_error("simulator time-step limits must be positive");
  }
  if (config.minTimeStep > config.maxTimeStep) {
    throw std::runtime_error("simulator minTimeStep must not exceed maxTimeStep");
  }
  if (config.cfl <= 0.0) {
    throw std::runtime_error("simulator CFL limit must be positive");
  }
  if (config.pressureTolerance <= 0.0 || config.pressureMaxIterations == 0) {
    throw std::runtime_error("simulator pressure solver controls must be positive");
  }
}

} // namespace

Simulator::Simulator(
    const Grid& grid,
    const RockProps& rock,
    const Fluid& fluid,
    const Wells& wells,
    SimulatorConfig config)
    : grid_(grid), rock_(rock), fluid_(fluid), wells_(wells), config_(config) {
  reset();
}

const ReservoirState& Simulator::state() const noexcept {
  return state_;
}

const MassAccounting& Simulator::accounting() const noexcept {
  return accounting_;
}

const std::vector<SimulatorSnapshot>& Simulator::snapshots() const noexcept {
  return snapshots_;
}

void Simulator::reset() {
  validateConfig(config_);
  grid_.validate();
  rock_.validateForGrid(grid_);
  fluid_.validate();
  wells_.validateForGrid(grid_);

  state_.time = config_.startTime;
  state_.pressure.assign(grid_.cellCount(), config_.initialPressure);
  state_.waterSaturation.assign(grid_.cellCount(), clamp01(config_.initialWaterSaturation));

  accounting_ = MassAccounting{};
  accounting_ = massFromState(grid_, rock_, state_, accounting_);
  accounting_.initialWater = accounting_.currentWater;
  accounting_.initialOil = accounting_.currentOil;
  accounting_.waterBalanceError = 0.0;
  accounting_.oilBalanceError = 0.0;

  const std::vector<ActiveWell> activeWells = buildWells(grid_, rock_, wells_);
  wellReports_.assign(activeWells.size(), WellReport{});
  for (std::size_t i = 0; i < activeWells.size(); ++i) {
    wellReports_[i].name = activeWells[i].name;
    wellReports_[i].type = activeWells[i].type;
    wellReports_[i].cell = activeWells[i].cell;
  }

  snapshots_.clear();
  stepIndex_ = 0;
  pressureIterations_ = 0;
  pressureResidualNorm_ = 0.0;
  pressureConverged_ = true;

  if (config_.storeInitialSnapshot) {
    FlowDiagnostics zeroFlow;
    zeroFlow.wellTotalRate.assign(activeWells.size(), 0.0);
    zeroFlow.wellWaterRate.assign(activeWells.size(), 0.0);
    zeroFlow.wellOilRate.assign(activeWells.size(), 0.0);

    SimulatorSnapshot snapshot;
    snapshot.step = stepIndex_;
    snapshot.time = state_.time;
    snapshot.dt = 0.0;
    snapshot.state = state_;
    snapshot.wells = reportsFromRates(activeWells, zeroFlow, state_, wellReports_);
    snapshot.accounting = accounting_;
    snapshots_.push_back(snapshot);
  }
}

SimulatorSnapshot Simulator::step(double requestedDt) {
  if (requestedDt <= 0.0) {
    throw std::runtime_error("simulator step dt must be positive");
  }

  const std::vector<Connection> connections = buildConnections(grid_, rock_);
  const std::vector<ActiveWell> activeWells = buildWells(grid_, rock_, wells_);
  const std::vector<double> poreVolume = poreVolumes(grid_, rock_);

  double remaining = requestedDt;
  double advanced = 0.0;
  FlowDiagnostics flow;

  while (remaining > config_.minTimeStep) {
    const PressureResult pressure = solvePressure(fluid_, connections, activeWells, state_, config_);
    state_.pressure = pressure.solve.x;
    pressureIterations_ += pressure.solve.iterations;
    pressureResidualNorm_ = pressure.solve.residualNorm;
    pressureConverged_ = pressureConverged_ && pressure.solve.converged;

    flow = computeFluxes(fluid_, connections, activeWells, state_);
    const double dt = cflLimitedDt(
        fluid_, poreVolume, flow, config_.cfl, remaining);
    if (dt < config_.minTimeStep) {
      throw std::runtime_error("CFL-limited transport step fell below minTimeStep");
    }

    std::vector<double> waterDelta(grid_.cellCount(), 0.0);
    for (std::size_t i = 0; i < connections.size(); ++i) {
      const Connection& connection = connections[i];
      const double totalFlux = flow.connectionTotalFlux[i];
      const std::size_t upstream = totalFlux >= 0.0 ? connection.cell1 : connection.cell2;
      const std::size_t downstream = totalFlux >= 0.0 ? connection.cell2 : connection.cell1;
      const double waterFlux = std::abs(totalFlux) *
          fluid_.fractionalFlowWater(state_.waterSaturation[upstream]);
      waterDelta[upstream] -= waterFlux * dt;
      waterDelta[downstream] += waterFlux * dt;
    }

    for (std::size_t i = 0; i < activeWells.size(); ++i) {
      const std::size_t cell = activeWells[i].cell;
      waterDelta[cell] += flow.wellWaterRate[i] * dt;

      addCumulative(
          flow.wellWaterRate[i] * dt,
          wellReports_[i].cumulativeWaterInjected,
          wellReports_[i].cumulativeWaterProduced);
      addCumulative(
          flow.wellOilRate[i] * dt,
          wellReports_[i].cumulativeOilInjected,
          wellReports_[i].cumulativeOilProduced);
      addCumulative(
          flow.wellWaterRate[i] * dt,
          accounting_.cumulativeWaterInjected,
          accounting_.cumulativeWaterProduced);
      addCumulative(
          flow.wellOilRate[i] * dt,
          accounting_.cumulativeOilInjected,
          accounting_.cumulativeOilProduced);
    }

    const double minimumSaturation = fluid_.corey().connateWater;
    const double maximumSaturation = 1.0 - fluid_.corey().residualOil;
    constexpr double saturationTolerance = 1.0e-10;
    for (std::size_t cell = 0; cell < grid_.cellCount(); ++cell) {
      const double updated =
          state_.waterSaturation[cell] + waterDelta[cell] / poreVolume[cell];
      if (updated < minimumSaturation - saturationTolerance ||
          updated > maximumSaturation + saturationTolerance) {
        throw std::runtime_error(
            "explicit saturation update left the physical mobile interval; reduce CFL");
      }
      state_.waterSaturation[cell] =
          std::clamp(updated, minimumSaturation, maximumSaturation);
    }

    state_.time += dt;
    advanced += dt;
    remaining -= dt;
  }

  accounting_ = massFromState(grid_, rock_, state_, accounting_);
  flow = computeFluxes(fluid_, connections, activeWells, state_);

  ++stepIndex_;
  SimulatorSnapshot snapshot;
  snapshot.step = stepIndex_;
  snapshot.time = state_.time;
  snapshot.dt = advanced;
  snapshot.state = state_;
  snapshot.wells = reportsFromRates(activeWells, flow, state_, wellReports_);
  snapshot.accounting = accounting_;
  snapshots_.push_back(snapshot);
  return snapshot;
}

SimulatorReport Simulator::run() {
  pressureIterations_ = 0;
  pressureResidualNorm_ = 0.0;
  pressureConverged_ = true;

  double nextOutput = config_.outputInterval > 0.0
      ? config_.startTime + config_.outputInterval
      : std::numeric_limits<double>::infinity();

  while (state_.time < config_.endTime - config_.minTimeStep) {
    double dt = std::min(config_.maxTimeStep, config_.endTime - state_.time);
    if (state_.time + dt > nextOutput) {
      dt = nextOutput - state_.time;
      nextOutput += config_.outputInterval;
    }
    if (dt <= config_.minTimeStep) {
      dt = std::min(config_.maxTimeStep, config_.endTime - state_.time);
    }
    step(dt);
  }

  if (config_.storeFinalSnapshot &&
      (snapshots_.empty() || std::abs(snapshots_.back().time - state_.time) > config_.minTimeStep)) {
    const std::vector<Connection> connections = buildConnections(grid_, rock_);
    const std::vector<ActiveWell> activeWells = buildWells(grid_, rock_, wells_);
    const FlowDiagnostics flow = computeFluxes(fluid_, connections, activeWells, state_);

    SimulatorSnapshot snapshot;
    snapshot.step = stepIndex_;
    snapshot.time = state_.time;
    snapshot.dt = 0.0;
    snapshot.state = state_;
    snapshot.wells = reportsFromRates(activeWells, flow, state_, wellReports_);
    snapshot.accounting = accounting_;
    snapshots_.push_back(snapshot);
  }

  SimulatorReport report;
  report.finalState = state_;
  report.snapshots = snapshots_;
  report.accounting = accounting_;
  report.pressureIterations = pressureIterations_;
  report.pressureResidualNorm = pressureResidualNorm_;
  report.pressureConverged = pressureConverged_;
  return report;
}

} // namespace reservoir
