#include "resim/VtkWriter.h"

#include <algorithm>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <stdexcept>

namespace reservoir {
namespace {

std::string xmlEscape(const std::string &value) {
  std::string escaped;
  escaped.reserve(value.size());
  for (const char c : value) {
    switch (c) {
    case '&': escaped += "&amp;"; break;
    case '<': escaped += "&lt;"; break;
    case '>': escaped += "&gt;"; break;
    case '"': escaped += "&quot;"; break;
    case '\'': escaped += "&apos;"; break;
    default: escaped.push_back(c); break;
    }
  }
  return escaped;
}

std::string sanitizeName(const std::string &name) {
  std::string sanitized;
  sanitized.reserve(name.size());
  for (const char c : name) {
    if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ||
        (c >= '0' && c <= '9') || c == '_' || c == '-') {
      sanitized.push_back(c);
    } else {
      sanitized.push_back('_');
    }
  }
  return sanitized.empty() ? "field" : sanitized;
}

void ensureStreamOpen(const std::ofstream &stream, const std::filesystem::path &path) {
  if (!stream) {
    throw std::runtime_error("unable to write VTK file '" + path.string() + "'");
  }
}

void validateScalarFields(const Grid &grid, const VtkCellData &cell_data) {
  for (const auto &[name, values] : cell_data.scalar_fields) {
    if (values.size() != grid.cellCount()) {
      std::ostringstream out;
      out << "VTK scalar field '" << name << "' has " << values.size()
          << " values but grid has " << grid.cellCount() << " cells";
      throw std::invalid_argument(out.str());
    }
  }
}

void writeScalarArray(std::ostream &out,
                      const std::string &name,
                      const std::vector<double> &values,
                      const std::string &indent) {
  out << indent << "<DataArray type=\"Float64\" Name=\"" << xmlEscape(sanitizeName(name))
      << "\" format=\"ascii\">\n";
  out << indent << "  ";
  out << std::setprecision(17);
  for (std::size_t i = 0; i < values.size(); ++i) {
    if (i != 0 && i % 8 == 0) {
      out << "\n" << indent << "  ";
    }
    out << values[i] << ' ';
  }
  out << "\n" << indent << "</DataArray>\n";
}

void writePointArray(std::ostream &out, const std::vector<VtkWellPoint> &wells) {
  out << "        <DataArray type=\"Float64\" NumberOfComponents=\"3\" format=\"ascii\">\n";
  out << "          " << std::setprecision(17);
  for (const VtkWellPoint &well : wells) {
    out << well.x << ' ' << well.y << ' ' << well.z << ' ';
  }
  out << "\n        </DataArray>\n";
}

void writeWellScalar(std::ostream &out,
                     const std::string &name,
                     const std::vector<VtkWellPoint> &wells,
                     double VtkWellPoint::*member) {
  out << "        <DataArray type=\"Float64\" Name=\"" << name << "\" format=\"ascii\">\n";
  out << "          " << std::setprecision(17);
  for (const VtkWellPoint &well : wells) {
    out << well.*member << ' ';
  }
  out << "\n        </DataArray>\n";
}

void writeWellIds(std::ostream &out, const std::vector<VtkWellPoint> &wells) {
  out << "        <DataArray type=\"Int64\" Name=\"WellId\" format=\"ascii\">\n";
  out << "          ";
  for (std::size_t i = 0; i < wells.size(); ++i) {
    out << i << ' ';
  }
  out << "\n        </DataArray>\n";
}

void writeWellCellIds(std::ostream &out, const std::vector<VtkWellPoint> &wells) {
  out << "        <DataArray type=\"Int64\" Name=\"CellId\" format=\"ascii\">\n";
  out << "          ";
  for (const VtkWellPoint &well : wells) {
    out << well.cell << ' ';
  }
  out << "\n        </DataArray>\n";
}

void writeWellTypes(std::ostream &out, const std::vector<VtkWellPoint> &wells) {
  out << "        <DataArray type=\"Int32\" Name=\"WellType\" format=\"ascii\">\n";
  out << "          ";
  for (const VtkWellPoint &well : wells) {
    out << well.well_type << ' ';
  }
  out << "\n        </DataArray>\n";
}

} // namespace

VtkWriter::VtkWriter(std::filesystem::path output_dir, std::string output_prefix)
    : output_dir_(std::move(output_dir)), output_prefix_(std::move(output_prefix)) {
  if (output_dir_.empty()) {
    throw std::invalid_argument("VTK output directory must not be empty");
  }
  if (output_prefix_.empty()) {
    throw std::invalid_argument("VTK output prefix must not be empty");
  }
  std::filesystem::create_directories(output_dir_);
}

VtkWriteResult VtkWriter::writeStep(const Grid &grid,
                                    const VtkCellData &cell_data,
                                    const std::vector<VtkWellPoint> &wells) {
  grid.validate();
  validateScalarFields(grid, cell_data);
  std::filesystem::create_directories(output_dir_);

  VtkWriteResult result;
  result.image_file = stepPath(cell_data.step, ".vti");
  writeImageData(grid, cell_data, result.image_file);
  datasets_.push_back({cell_data.time, result.image_file});

  if (!wells.empty()) {
    result.wells_file = wellsPath();
    writeWellPolyData(wells, result.wells_file);
  }

  writePvd(output_dir_ / (output_prefix_ + ".pvd"));
  return result;
}

std::filesystem::path VtkWriter::writeImageData(const Grid &grid,
                                                const VtkCellData &cell_data,
                                                const std::filesystem::path &file_path) const {
  validateScalarFields(grid, cell_data);
  std::filesystem::create_directories(file_path.parent_path());

  std::ofstream out(file_path);
  ensureStreamOpen(out, file_path);

  const auto nx = static_cast<long long>(grid.nx());
  const auto ny = static_cast<long long>(grid.ny());
  const auto nz = static_cast<long long>(grid.nz());

  out << "<?xml version=\"1.0\"?>\n";
  out << "<VTKFile type=\"ImageData\" version=\"0.1\" byte_order=\"LittleEndian\">\n";
  out << "  <ImageData WholeExtent=\"0 " << nx << " 0 " << ny << " 0 " << nz
      << "\" Origin=\"0 0 0\" Spacing=\"" << std::setprecision(17)
      << grid.dx() << ' ' << grid.dy() << ' ' << grid.dz() << "\">\n";
  out << "    <Piece Extent=\"0 " << nx << " 0 " << ny << " 0 " << nz << "\">\n";
  out << "      <CellData Scalars=\"Pressure\">\n";
  for (const auto &[name, values] : cell_data.scalar_fields) {
    writeScalarArray(out, name, values, "        ");
  }
  out << "      </CellData>\n";
  out << "      <PointData/>\n";
  out << "    </Piece>\n";
  out << "  </ImageData>\n";
  out << "</VTKFile>\n";

  return file_path;
}

std::filesystem::path VtkWriter::writeWellPolyData(const std::vector<VtkWellPoint> &wells,
                                                   const std::filesystem::path &file_path) const {
  std::filesystem::create_directories(file_path.parent_path());

  std::ofstream out(file_path);
  ensureStreamOpen(out, file_path);

  out << "<?xml version=\"1.0\"?>\n";
  out << "<VTKFile type=\"PolyData\" version=\"0.1\" byte_order=\"LittleEndian\">\n";
  out << "  <PolyData>\n";
  out << "    <Piece NumberOfPoints=\"" << wells.size()
      << "\" NumberOfVerts=\"" << wells.size()
      << "\" NumberOfLines=\"0\" NumberOfStrips=\"0\" NumberOfPolys=\"0\">\n";
  out << "      <PointData Scalars=\"total_rate\">\n";
  writeWellScalar(out, "bhp", wells, &VtkWellPoint::bhp);
  writeWellScalar(out, "total_rate", wells, &VtkWellPoint::total_rate);
  writeWellScalar(out, "water_rate", wells, &VtkWellPoint::water_rate);
  writeWellScalar(out, "oil_rate", wells, &VtkWellPoint::oil_rate);
  writeWellIds(out, wells);
  writeWellCellIds(out, wells);
  writeWellTypes(out, wells);
  out << "      </PointData>\n";
  out << "      <FieldData>\n";
  out << "        <DataArray type=\"String\" Name=\"name\" NumberOfTuples=\"" << wells.size()
      << "\" format=\"ascii\">\n";
  out << "          ";
  for (const VtkWellPoint &well : wells) {
    out << xmlEscape(well.name) << ' ';
  }
  out << "\n        </DataArray>\n";
  out << "      </FieldData>\n";
  out << "      <Points>\n";
  writePointArray(out, wells);
  out << "      </Points>\n";
  out << "      <Verts>\n";
  out << "        <DataArray type=\"Int64\" Name=\"connectivity\" format=\"ascii\">\n";
  out << "          ";
  for (std::size_t i = 0; i < wells.size(); ++i) {
    out << i << ' ';
  }
  out << "\n        </DataArray>\n";
  out << "        <DataArray type=\"Int64\" Name=\"offsets\" format=\"ascii\">\n";
  out << "          ";
  for (std::size_t i = 0; i < wells.size(); ++i) {
    out << (i + 1) << ' ';
  }
  out << "\n        </DataArray>\n";
  out << "      </Verts>\n";
  out << "    </Piece>\n";
  out << "  </PolyData>\n";
  out << "</VTKFile>\n";

  return file_path;
}

std::filesystem::path VtkWriter::writePvd(const std::filesystem::path &file_path) const {
  std::filesystem::create_directories(file_path.parent_path());

  std::ofstream out(file_path);
  ensureStreamOpen(out, file_path);

  std::vector<std::pair<double, std::filesystem::path>> sorted = datasets_;
  std::stable_sort(sorted.begin(), sorted.end(), [](const auto &left, const auto &right) {
    return left.first < right.first;
  });

  out << "<?xml version=\"1.0\"?>\n";
  out << "<VTKFile type=\"Collection\" version=\"0.1\" byte_order=\"LittleEndian\">\n";
  out << "  <Collection>\n";
  for (const auto &[time, dataset] : sorted) {
    out << "    <DataSet timestep=\"" << std::setprecision(17) << time
        << "\" group=\"\" part=\"0\" file=\""
        << xmlEscape(relativeToOutputDir(dataset).generic_string()) << "\"/>\n";
  }
  out << "  </Collection>\n";
  out << "</VTKFile>\n";

  return file_path;
}

std::filesystem::path VtkWriter::stepPath(int step, const std::string &extension) const {
  std::ostringstream name;
  name << output_prefix_ << '_' << std::setw(5) << std::setfill('0') << step << extension;
  return output_dir_ / name.str();
}

std::filesystem::path VtkWriter::wellsPath() const {
  return output_dir_ / "wells.vtp";
}

std::filesystem::path VtkWriter::relativeToOutputDir(const std::filesystem::path &path) const {
  std::error_code error;
  const std::filesystem::path relative = std::filesystem::relative(path, output_dir_, error);
  return error ? path.filename() : relative;
}

} // namespace reservoir
