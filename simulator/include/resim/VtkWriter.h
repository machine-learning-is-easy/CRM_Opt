#pragma once

#include "resim/Grid.h"
#include "resim/Wells.h"

#include <filesystem>
#include <map>
#include <utility>
#include <string>
#include <vector>

namespace reservoir {

struct VtkCellData {
  int step = 0;
  double time = 0.0;
  std::map<std::string, std::vector<double>> scalar_fields;
};

struct VtkWellPoint {
  // wells.vtp assigns WellId from this vector's stable zero-based tuple order.
  std::string name;
  // X-fastest simulator cell index written as the CellId point-data array.
  std::size_t cell = 0;
  double x = 0.0;
  double y = 0.0;
  double z = 0.0;
  double bhp = 0.0;
  double total_rate = 0.0;
  double water_rate = 0.0;
  double oil_rate = 0.0;
  int well_type = 0; // 1 for injector, -1 for producer.
};

struct VtkWriteResult {
  std::filesystem::path image_file;
  std::filesystem::path wells_file;
};

class VtkWriter {
public:
  VtkWriter(std::filesystem::path output_dir, std::string output_prefix);

  const std::filesystem::path &outputDir() const noexcept { return output_dir_; }
  const std::string &outputPrefix() const noexcept { return output_prefix_; }

  VtkWriteResult writeStep(const Grid &grid,
                           const VtkCellData &cell_data,
                           const std::vector<VtkWellPoint> &wells = {});
  std::filesystem::path writeImageData(const Grid &grid,
                                       const VtkCellData &cell_data,
                                       const std::filesystem::path &file_path) const;
  std::filesystem::path writeWellPolyData(const std::vector<VtkWellPoint> &wells,
                                          const std::filesystem::path &file_path) const;
  std::filesystem::path writePvd(const std::filesystem::path &file_path) const;

  template <typename Snapshot>
  VtkWriteResult writeSnapshot(const Grid &grid, const Snapshot &snapshot) {
    VtkCellData cell_data;
    cell_data.step = snapshot.step;
    cell_data.time = snapshot.time;
    cell_data.scalar_fields["Pressure"] = snapshot.state.pressure;
    cell_data.scalar_fields["Sw"] = snapshot.state.waterSaturation;
    std::vector<double> oil_saturation;
    oil_saturation.reserve(snapshot.state.waterSaturation.size());
    for (double sw : snapshot.state.waterSaturation) {
      oil_saturation.push_back(1.0 - sw);
    }
    cell_data.scalar_fields["So"] = std::move(oil_saturation);

    std::vector<VtkWellPoint> wells;
    wells.reserve(snapshot.wells.size());
    for (const auto &well : snapshot.wells) {
      const Point3 center = grid.cellCenter(well.cell);
      wells.push_back(VtkWellPoint{
          well.name,
          well.cell,
          center.x,
          center.y,
          center.z,
          well.bhp,
          well.totalRate,
          well.waterRate,
          well.oilRate,
          well.type == WellType::Injector ? 1 : -1,
      });
    }
    return writeStep(grid, cell_data, wells);
  }

private:
  std::filesystem::path output_dir_;
  std::string output_prefix_;
  std::vector<std::pair<double, std::filesystem::path>> datasets_;

  std::filesystem::path stepPath(int step, const std::string &extension) const;
  std::filesystem::path wellsPath() const;
  std::filesystem::path relativeToOutputDir(const std::filesystem::path &path) const;
};

} // namespace reservoir
