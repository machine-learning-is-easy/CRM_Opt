#include "resim/RockProps.h"

#include <limits>
#include <numeric>
#include <stdexcept>
#include <string>
#include <utility>

namespace reservoir {
namespace {

bool finite(double value) {
  return value == value && value != std::numeric_limits<double>::infinity() &&
      value != -std::numeric_limits<double>::infinity();
}

void validateArraySize(
    const std::vector<double>& values,
    std::size_t expected,
    const char* name) {
  if (values.size() != expected) {
    throw std::invalid_argument(std::string(name) + " size does not match porosity size");
  }
}

void validatePorosity(double value, std::size_t cell) {
  if (!finite(value) || value <= 0.0 || value > 1.0) {
    throw std::invalid_argument("porosity at cell " + std::to_string(cell) + " must be finite and in (0, 1]");
  }
}

void validatePermeability(double value, std::size_t cell, const char* name) {
  if (!finite(value) || value <= 0.0) {
    throw std::invalid_argument(std::string(name) + " at cell " + std::to_string(cell) + " must be positive and finite");
  }
}

} // namespace

RockProps::RockProps(
    std::vector<double> porosity,
    std::vector<double> permeabilityX,
    std::vector<double> permeabilityY,
    std::vector<double> permeabilityZ)
    : porosity_(std::move(porosity)),
      permeabilityX_(std::move(permeabilityX)),
      permeabilityY_(std::move(permeabilityY)),
      permeabilityZ_(std::move(permeabilityZ)) {
  validate();
}

RockProps RockProps::uniform(const Grid& grid, double porosity, double permeability) {
  return uniform(grid, porosity, permeability, permeability, permeability);
}

RockProps RockProps::uniform(
    const Grid& grid,
    double porosity,
    double permeabilityX,
    double permeabilityY,
    double permeabilityZ) {
  grid.validate();
  const std::size_t n = grid.cellCount();
  return RockProps(
      std::vector<double>(n, porosity),
      std::vector<double>(n, permeabilityX),
      std::vector<double>(n, permeabilityY),
      std::vector<double>(n, permeabilityZ));
}

std::size_t RockProps::size() const noexcept {
  return porosity_.size();
}

bool RockProps::empty() const noexcept {
  return porosity_.empty();
}

double RockProps::porosity(std::size_t cell) const {
  if (cell >= size()) {
    throw std::out_of_range("rock porosity cell index is out of range");
  }
  return porosity_[cell];
}

double RockProps::permeabilityX(std::size_t cell) const {
  if (cell >= size()) {
    throw std::out_of_range("rock permeability cell index is out of range");
  }
  return permeabilityX_[cell];
}

double RockProps::permeabilityY(std::size_t cell) const {
  if (cell >= size()) {
    throw std::out_of_range("rock permeability cell index is out of range");
  }
  return permeabilityY_[cell];
}

double RockProps::permeabilityZ(std::size_t cell) const {
  if (cell >= size()) {
    throw std::out_of_range("rock permeability cell index is out of range");
  }
  return permeabilityZ_[cell];
}

const std::vector<double>& RockProps::porosity() const noexcept {
  return porosity_;
}

const std::vector<double>& RockProps::permeabilityX() const noexcept {
  return permeabilityX_;
}

const std::vector<double>& RockProps::permeabilityY() const noexcept {
  return permeabilityY_;
}

const std::vector<double>& RockProps::permeabilityZ() const noexcept {
  return permeabilityZ_;
}

double RockProps::poreVolume(const Grid& grid, std::size_t cell) const {
  validateForGrid(grid);
  if (!grid.containsCell(cell)) {
    throw std::out_of_range("pore-volume cell index is outside the grid");
  }
  return porosity_[cell] * grid.cellVolume();
}

double RockProps::totalPoreVolume(const Grid& grid) const {
  validateForGrid(grid);
  const double poreVolumeFactor = grid.cellVolume();
  return std::accumulate(porosity_.begin(), porosity_.end(), 0.0) * poreVolumeFactor;
}

void RockProps::validate() const {
  validateArraySize(permeabilityX_, porosity_.size(), "permeabilityX");
  validateArraySize(permeabilityY_, porosity_.size(), "permeabilityY");
  validateArraySize(permeabilityZ_, porosity_.size(), "permeabilityZ");

  for (std::size_t cell = 0; cell < porosity_.size(); ++cell) {
    validatePorosity(porosity_[cell], cell);
    validatePermeability(permeabilityX_[cell], cell, "permeabilityX");
    validatePermeability(permeabilityY_[cell], cell, "permeabilityY");
    validatePermeability(permeabilityZ_[cell], cell, "permeabilityZ");
  }
}

void RockProps::validateForGrid(const Grid& grid) const {
  grid.validate();
  validate();
  if (size() != grid.cellCount()) {
    throw std::invalid_argument("rock property arrays must have one entry per grid cell");
  }
}

} // namespace reservoir
