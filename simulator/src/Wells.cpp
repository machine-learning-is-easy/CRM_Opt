#include "resim/Wells.h"

#include <algorithm>
#include <cmath>
#include <iterator>
#include <limits>
#include <stdexcept>
#include <string>
#include <utility>

namespace reservoir {
namespace {

constexpr double kPi = 3.141592653589793238462643383279502884;

bool finite(double value) {
  return value == value && value != std::numeric_limits<double>::infinity() &&
      value != -std::numeric_limits<double>::infinity();
}

void requireFinite(double value, const char* name) {
  if (!finite(value)) {
    throw std::invalid_argument(std::string(name) + " must be finite");
  }
}

void requirePositive(double value, const char* name) {
  if (!finite(value) || value <= 0.0) {
    throw std::invalid_argument(std::string(name) + " must be positive and finite");
  }
}

void requireSaturation(double value, const char* name) {
  if (!finite(value) || value < 0.0 || value > 1.0) {
    throw std::invalid_argument(std::string(name) + " must be finite and in [0, 1]");
  }
}

void validateWell(const Well& well, const Grid& grid) {
  if (well.name.empty()) {
    throw std::invalid_argument("well name must not be empty");
  }
  if (!grid.containsCell(well.cell)) {
    throw std::invalid_argument("well " + well.name + " references a cell outside the grid");
  }
  requireFinite(well.target, "well target");
  requirePositive(well.radius, "well radius");
  requireFinite(well.skin, "well skin");
  requireSaturation(well.waterSaturation, "well waterSaturation");
}

} // namespace

Wells::Wells(std::vector<Well> wells) : wells_(std::move(wells)) {}

void Wells::add(Well well) {
  wells_.push_back(std::move(well));
}

std::size_t Wells::size() const noexcept {
  return wells_.size();
}

bool Wells::empty() const noexcept {
  return wells_.empty();
}

const Well& Wells::operator[](std::size_t index) const {
  if (index >= wells_.size()) {
    throw std::out_of_range("well index is out of range");
  }
  return wells_[index];
}

Well& Wells::operator[](std::size_t index) {
  if (index >= wells_.size()) {
    throw std::out_of_range("well index is out of range");
  }
  return wells_[index];
}

const std::vector<Well>& Wells::all() const noexcept {
  return wells_;
}

std::vector<Well>& Wells::all() noexcept {
  return wells_;
}

std::vector<Well> Wells::injectors() const {
  std::vector<Well> result;
  std::copy_if(wells_.begin(), wells_.end(), std::back_inserter(result), [](const Well& well) {
    return well.type == WellType::Injector;
  });
  return result;
}

std::vector<Well> Wells::producers() const {
  std::vector<Well> result;
  std::copy_if(wells_.begin(), wells_.end(), std::back_inserter(result), [](const Well& well) {
    return well.type == WellType::Producer;
  });
  return result;
}

void Wells::validateForGrid(const Grid& grid) const {
  grid.validate();
  for (const Well& well : wells_) {
    validateWell(well, grid);
  }
}

double peacemanEquivalentRadius(double dx, double dy, double permeabilityX, double permeabilityY) {
  requirePositive(dx, "dx");
  requirePositive(dy, "dy");
  requirePositive(permeabilityX, "permeabilityX");
  requirePositive(permeabilityY, "permeabilityY");

  const double numerator = std::sqrt(std::sqrt(permeabilityY / permeabilityX) * dx * dx +
      std::sqrt(permeabilityX / permeabilityY) * dy * dy);
  const double denominator = std::pow(permeabilityY / permeabilityX, 0.25) +
      std::pow(permeabilityX / permeabilityY, 0.25);
  return 0.28 * numerator / denominator;
}

double peacemanWellIndex(
    const Grid& grid,
    const RockProps& rock,
    std::size_t cell,
    double wellRadius,
    double skin,
    double completionLength) {
  grid.validate();
  rock.validateForGrid(grid);
  if (!grid.containsCell(cell)) {
    throw std::out_of_range("well-index cell is outside the grid");
  }
  requirePositive(wellRadius, "wellRadius");
  requireFinite(skin, "skin");
  if (completionLength < 0.0 || !finite(completionLength)) {
    throw std::invalid_argument("completionLength must be nonnegative and finite");
  }

  const double kx = rock.permeabilityX(cell);
  const double ky = rock.permeabilityY(cell);
  const double kh = std::sqrt(kx * ky);
  const double re = peacemanEquivalentRadius(grid.dx(), grid.dy(), kx, ky);
  if (wellRadius >= re) {
    throw std::invalid_argument("wellRadius must be smaller than Peaceman equivalent radius");
  }
  const double length = completionLength > 0.0 ? completionLength : grid.dz();
  const double denominator = std::log(re / wellRadius) + skin;
  if (!(denominator > 0.0) || !finite(denominator)) {
    throw std::invalid_argument("Peaceman well-index denominator must be positive and finite");
  }
  return 2.0 * kPi * kh * length / denominator;
}

double wellSign(WellType type) noexcept {
  return type == WellType::Injector ? 1.0 : -1.0;
}

} // namespace reservoir
