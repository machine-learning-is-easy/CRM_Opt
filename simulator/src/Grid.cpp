#include "resim/Grid.h"

#include <limits>
#include <stdexcept>
#include <string>

namespace reservoir {
namespace {

void validatePositiveFinite(double value, const char* name) {
  if (!(value > 0.0) || value != value || value == std::numeric_limits<double>::infinity()) {
    throw std::invalid_argument(std::string(name) + " must be positive and finite");
  }
}

void validateNonzero(std::size_t value, const char* name) {
  if (value == 0) {
    throw std::invalid_argument(std::string(name) + " must be greater than zero");
  }
}

} // namespace

Grid::Grid(std::size_t nx, std::size_t ny, std::size_t nz, double dx, double dy, double dz)
    : nx_(nx), ny_(ny), nz_(nz), dx_(dx), dy_(dy), dz_(dz) {
  validate();
}

Grid Grid::fromExtents(
    std::size_t nx,
    std::size_t ny,
    std::size_t nz,
    double lx,
    double ly,
    double lz) {
  validateNonzero(nx, "nx");
  validateNonzero(ny, "ny");
  validateNonzero(nz, "nz");
  validatePositiveFinite(lx, "lx");
  validatePositiveFinite(ly, "ly");
  validatePositiveFinite(lz, "lz");
  return Grid(nx, ny, nz, lx / static_cast<double>(nx), ly / static_cast<double>(ny), lz / static_cast<double>(nz));
}

std::size_t Grid::nx() const noexcept {
  return nx_;
}

std::size_t Grid::ny() const noexcept {
  return ny_;
}

std::size_t Grid::nz() const noexcept {
  return nz_;
}

double Grid::dx() const noexcept {
  return dx_;
}

double Grid::dy() const noexcept {
  return dy_;
}

double Grid::dz() const noexcept {
  return dz_;
}

std::size_t Grid::cellCount() const noexcept {
  return nx_ * ny_ * nz_;
}

bool Grid::empty() const noexcept {
  return cellCount() == 0;
}

double Grid::cellVolume() const noexcept {
  return dx_ * dy_ * dz_;
}

bool Grid::contains(std::size_t i, std::size_t j, std::size_t k) const noexcept {
  return i < nx_ && j < ny_ && k < nz_;
}

bool Grid::containsCell(std::size_t cell) const noexcept {
  return cell < cellCount();
}

std::size_t Grid::index(std::size_t i, std::size_t j, std::size_t k) const {
  if (!contains(i, j, k)) {
    throw std::out_of_range("grid indices are outside the grid");
  }
  return (k * ny_ + j) * nx_ + i;
}

Index3 Grid::ijk(std::size_t cell) const {
  if (!containsCell(cell)) {
    throw std::out_of_range("cell index is outside the grid");
  }
  const std::size_t plane = nx_ * ny_;
  const std::size_t k = cell / plane;
  const std::size_t rem = cell % plane;
  const std::size_t j = rem / nx_;
  const std::size_t i = rem % nx_;
  return {i, j, k};
}

Point3 Grid::cellCenter(std::size_t cell) const {
  const Index3 id = ijk(cell);
  return {
      (static_cast<double>(id.i) + 0.5) * dx_,
      (static_cast<double>(id.j) + 0.5) * dy_,
      (static_cast<double>(id.k) + 0.5) * dz_,
  };
}

std::optional<std::size_t> Grid::neighbor(std::size_t cell, Direction direction) const {
  const Index3 id = ijk(cell);
  switch (direction) {
    case Direction::XMinus:
      return id.i == 0 ? std::nullopt : std::optional<std::size_t>(index(id.i - 1, id.j, id.k));
    case Direction::XPlus:
      return id.i + 1 >= nx_ ? std::nullopt : std::optional<std::size_t>(index(id.i + 1, id.j, id.k));
    case Direction::YMinus:
      return id.j == 0 ? std::nullopt : std::optional<std::size_t>(index(id.i, id.j - 1, id.k));
    case Direction::YPlus:
      return id.j + 1 >= ny_ ? std::nullopt : std::optional<std::size_t>(index(id.i, id.j + 1, id.k));
    case Direction::ZMinus:
      return id.k == 0 ? std::nullopt : std::optional<std::size_t>(index(id.i, id.j, id.k - 1));
    case Direction::ZPlus:
      return id.k + 1 >= nz_ ? std::nullopt : std::optional<std::size_t>(index(id.i, id.j, id.k + 1));
  }
  throw std::invalid_argument("unknown grid direction");
}

std::array<std::optional<std::size_t>, 6> Grid::neighbors(std::size_t cell) const {
  return {
      neighbor(cell, Direction::XMinus),
      neighbor(cell, Direction::XPlus),
      neighbor(cell, Direction::YMinus),
      neighbor(cell, Direction::YPlus),
      neighbor(cell, Direction::ZMinus),
      neighbor(cell, Direction::ZPlus),
  };
}

void Grid::validate() const {
  validateNonzero(nx_, "nx");
  validateNonzero(ny_, "ny");
  validateNonzero(nz_, "nz");
  validatePositiveFinite(dx_, "dx");
  validatePositiveFinite(dy_, "dy");
  validatePositiveFinite(dz_, "dz");
}

} // namespace reservoir
