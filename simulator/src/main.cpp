#include "resim/Config.h"
#include "resim/Fluid.h"
#include "resim/Grid.h"
#include "resim/RockProps.h"
#include "resim/Simulator.h"
#include "resim/VtkWriter.h"
#include "resim/Wells.h"

#include <algorithm>
#include <cmath>
#include <cstdlib>
#include <exception>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

namespace {

void printUsage(std::ostream& out, const char* program) {
  out << "Usage: " << program << " [--validate-only] <deck>\n\n"
      << "Runs a two-phase oil-water IMPES simulation and writes a VTK time series.\n"
      << "Relative input and output paths are resolved from the deck directory.\n";
}

struct CliOptions {
  bool validateOnly = false;
  std::filesystem::path deckPath;
};

CliOptions parseArgs(int argc, char** argv) {
  CliOptions options;
  for (int i = 1; i < argc; ++i) {
    const std::string argument(argv[i]);
    if (argument == "--help" || argument == "-h") {
      printUsage(std::cout, argv[0]);
      std::exit(0);
    }
    if (argument == "--validate-only") {
      options.validateOnly = true;
      continue;
    }
    if (!argument.empty() && argument.front() == '-') {
      throw std::invalid_argument("unknown option '" + argument + "'");
    }
    if (!options.deckPath.empty()) {
      throw std::invalid_argument("only one deck path may be provided");
    }
    options.deckPath = argument;
  }
  if (options.deckPath.empty()) {
    throw std::invalid_argument("missing deck path; use --help for usage");
  }
  return options;
}

reservoir::Grid makeGrid(const reservoir::Config& config) {
  const double dx = config.dx.value_or(
      config.lx.value_or(static_cast<double>(config.nx)) / static_cast<double>(config.nx));
  const double dy = config.dy.value_or(
      config.ly.value_or(static_cast<double>(config.ny)) / static_cast<double>(config.ny));
  const double dz = config.dz.value_or(
      config.lz.value_or(static_cast<double>(config.nz)) / static_cast<double>(config.nz));
  return reservoir::Grid(
      static_cast<std::size_t>(config.nx),
      static_cast<std::size_t>(config.ny),
      static_cast<std::size_t>(config.nz),
      dx,
      dy,
      dz);
}

std::vector<double> readField(
    const std::filesystem::path& path,
    std::size_t expectedCount,
    const std::string& fieldName) {
  std::ifstream input(path);
  if (!input) {
    throw std::runtime_error("unable to open " + fieldName + " file '" + path.string() + "'");
  }

  std::vector<double> values;
  double value = 0.0;
  while (input >> value) {
    values.push_back(value);
  }
  if (!input.eof()) {
    throw std::runtime_error("invalid numeric data in " + fieldName + " file '" + path.string() + "'");
  }
  if (values.size() != expectedCount) {
    throw std::runtime_error(
        fieldName + " file '" + path.string() + "' contains " +
        std::to_string(values.size()) + " values; expected " + std::to_string(expectedCount));
  }
  return values;
}

reservoir::RockProps makeRock(const reservoir::Config& config, const reservoir::Grid& grid) {
  std::vector<double> porosity = config.poro_file.empty()
      ? std::vector<double>(grid.cellCount(), config.scalarOr("porosity", config.scalarOr("poro", 0.2)))
      : readField(config.poroFilePath(), grid.cellCount(), "porosity");
  std::vector<double> permeability = config.perm_file.empty()
      ? std::vector<double>(grid.cellCount(), config.scalarOr("permeability", config.scalarOr("perm", 100.0)))
      : readField(config.permFilePath(), grid.cellCount(), "permeability");
  return reservoir::RockProps(porosity, permeability, permeability, permeability);
}

reservoir::Fluid makeFluid(const reservoir::Config& config) {
  reservoir::CoreyParams corey;
  corey.connateWater = config.scalarOr("swc", corey.connateWater);
  corey.residualOil = config.scalarOr("sor", corey.residualOil);
  corey.waterRelPermEndpoint = config.scalarOr("krw_max", config.scalarOr("krw0", 1.0));
  corey.oilRelPermEndpoint = config.scalarOr("kro_max", config.scalarOr("kro0", 1.0));
  corey.waterExponent = config.scalarOr("corey_nw", config.scalarOr("nw", 2.0));
  corey.oilExponent = config.scalarOr("corey_no", config.scalarOr("no", 2.0));
  return reservoir::Fluid(
      config.scalarOr("mu_water", config.scalarOr("mu_w", config.scalarOr("water_viscosity", 1.0))),
      config.scalarOr("mu_oil", config.scalarOr("mu_o", config.scalarOr("oil_viscosity", 5.0))),
      corey);
}

reservoir::Wells makeWells(const reservoir::Config& config, const reservoir::Grid& grid) {
  reservoir::Wells wells;
  for (const reservoir::WellConfig& source : config.wells) {
    reservoir::Well well;
    well.name = source.name;
    well.type = source.type == reservoir::WellConfig::Type::Injector
        ? reservoir::WellType::Injector
        : reservoir::WellType::Producer;
    well.cell = grid.index(
        static_cast<std::size_t>(source.i),
        static_cast<std::size_t>(source.j),
        static_cast<std::size_t>(source.k));
    well.radius = source.radius;
    well.skin = source.skin;
    well.waterSaturation = source.type == reservoir::WellConfig::Type::Injector ? 1.0 : 0.0;
    if (source.bhp.has_value()) {
      well.control = reservoir::WellControl::BottomHolePressure;
      well.target = *source.bhp;
    } else {
      well.control = reservoir::WellControl::Rate;
      well.target = source.rate.value_or(0.0);
    }
    wells.add(well);
  }
  wells.validateForGrid(grid);
  return wells;
}

reservoir::SimulatorConfig makeSimulatorConfig(const reservoir::Config& config) {
  if (config.output_every.has_value()) {
    throw reservoir::ConfigError(
        "output_every/vtk_every is not supported; use report_dt or output_interval");
  }

  reservoir::SimulatorConfig result;
  result.initialPressure = config.scalarOr("initial_pressure", config.scalarOr("pressure", 0.0));
  result.initialWaterSaturation = config.scalarOr(
      "init_sw", config.scalarOr("initial_sw", config.scalarOr("sw_init", 0.2)));

  const double reportDt = config.output_interval.value_or(
      config.scalarOr("report_dt", config.dt.value_or(1.0)));
  result.maxTimeStep = config.dt.value_or(reportDt);
  result.outputInterval = reportDt;
  if (config.total_time.has_value()) {
    result.endTime = *config.total_time;
  } else if (config.steps.has_value()) {
    result.endTime = result.maxTimeStep * static_cast<double>(*config.steps);
  } else {
    result.endTime = result.maxTimeStep;
  }
  result.cfl = config.cfl.value_or(0.5);
  return result;
}

reservoir::VtkCellData makeCellData(
    const reservoir::SimulatorSnapshot& snapshot,
    const reservoir::RockProps& rock) {
  reservoir::VtkCellData data;
  data.step = static_cast<int>(snapshot.step);
  data.time = snapshot.time;
  data.scalar_fields["Pressure"] = snapshot.state.pressure;
  data.scalar_fields["Sw"] = snapshot.state.waterSaturation;
  data.scalar_fields["So"].reserve(snapshot.state.waterSaturation.size());
  for (double sw : snapshot.state.waterSaturation) {
    data.scalar_fields["So"].push_back(1.0 - sw);
  }
  data.scalar_fields["Permeability"] = rock.permeabilityX();
  data.scalar_fields["Porosity"] = rock.porosity();
  return data;
}

std::vector<reservoir::VtkWellPoint> makeWellPoints(
    const reservoir::SimulatorSnapshot& snapshot,
    const reservoir::Grid& grid) {
  std::vector<reservoir::VtkWellPoint> points;
  points.reserve(snapshot.wells.size());
  for (const reservoir::WellReport& report : snapshot.wells) {
    const reservoir::Point3 center = grid.cellCenter(report.cell);
    points.push_back(reservoir::VtkWellPoint{
        report.name,
        report.cell,
        center.x,
        center.y,
        center.z,
        report.bhp,
        report.totalRate,
        report.waterRate,
        report.oilRate,
        report.type == reservoir::WellType::Injector ? 1 : -1,
    });
  }
  return points;
}

bool isReportSnapshot(
    const reservoir::SimulatorSnapshot& snapshot,
    double startTime,
    double endTime,
    double reportInterval) {
  const double scale = std::max(1.0, std::abs(endTime));
  const double tolerance = 1.0e-9 * scale;
  if (std::abs(snapshot.time - startTime) <= tolerance ||
      std::abs(snapshot.time - endTime) <= tolerance) {
    return true;
  }
  const double reportIndex = (snapshot.time - startTime) / reportInterval;
  return std::abs(reportIndex - std::round(reportIndex)) <= 1.0e-9;
}

} // namespace

int main(int argc, char** argv) {
  try {
    const CliOptions options = parseArgs(argc, argv);
    const reservoir::Config config = reservoir::Config::fromFile(options.deckPath);
    const reservoir::Grid grid = makeGrid(config);
    const reservoir::RockProps rock = makeRock(config, grid);
    const reservoir::Fluid fluid = makeFluid(config);
    const reservoir::Wells wells = makeWells(config, grid);
    const reservoir::SimulatorConfig simulatorConfig = makeSimulatorConfig(config);

    std::cout << "Deck validated: " << config.deck_path << '\n'
              << "Grid: " << config.nx << " x " << config.ny << " x " << config.nz
              << " (" << grid.cellCount() << " cells)\n"
              << "Wells: " << wells.size() << '\n';
    if (options.validateOnly) {
      return 0;
    }

    reservoir::Simulator simulator(grid, rock, fluid, wells, simulatorConfig);
    const reservoir::SimulatorReport report = simulator.run();
    if (!report.pressureConverged) {
      throw std::runtime_error("pressure solver did not converge");
    }

    reservoir::VtkWriter writer(config.outputDirectoryPath(), config.output_prefix);
    std::size_t outputCount = 0;
    for (const reservoir::SimulatorSnapshot& snapshot : report.snapshots) {
      if (!isReportSnapshot(
              snapshot,
              simulatorConfig.startTime,
              simulatorConfig.endTime,
              simulatorConfig.outputInterval)) {
        continue;
      }
      writer.writeStep(grid, makeCellData(snapshot, rock), makeWellPoints(snapshot, grid));
      ++outputCount;
    }

    std::cout << "Simulation complete at time " << report.finalState.time << '\n'
              << "Pressure iterations: " << report.pressureIterations << '\n'
              << "Report snapshots: " << outputCount << '\n'
              << "Water balance error: " << report.accounting.waterBalanceError << '\n'
              << "Oil balance error: " << report.accounting.oilBalanceError << '\n'
              << "VTK collection: "
              << (config.outputDirectoryPath() / (config.output_prefix + ".pvd")) << '\n';
    return 0;
  } catch (const reservoir::ConfigError& error) {
    std::cerr << "Configuration error: " << error.what() << '\n';
    return 2;
  } catch (const std::exception& error) {
    std::cerr << "Error: " << error.what() << '\n';
    return 1;
  }
}
