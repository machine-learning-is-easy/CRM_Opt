#pragma once

#include "resim/Grid.h"
#include "resim/RockProps.h"

#include <cstddef>
#include <string>
#include <vector>

namespace reservoir {

enum class WellType {
  Injector,
  Producer,
};

enum class WellControl {
  Rate,
  BottomHolePressure,
};

struct Well {
  std::string name;
  WellType type = WellType::Producer;
  WellControl control = WellControl::Rate;
  std::size_t cell = 0;
  double target = 0.0;
  double radius = 0.1;
  double skin = 0.0;
  double waterSaturation = 1.0;
};

class Wells {
 public:
  Wells() = default;
  explicit Wells(std::vector<Well> wells);

  void add(Well well);
  std::size_t size() const noexcept;
  bool empty() const noexcept;

  const Well& operator[](std::size_t index) const;
  Well& operator[](std::size_t index);

  const std::vector<Well>& all() const noexcept;
  std::vector<Well>& all() noexcept;

  std::vector<Well> injectors() const;
  std::vector<Well> producers() const;

  void validateForGrid(const Grid& grid) const;

 private:
  std::vector<Well> wells_;
};

double peacemanEquivalentRadius(double dx, double dy, double permeabilityX, double permeabilityY);
double peacemanWellIndex(
    const Grid& grid,
    const RockProps& rock,
    std::size_t cell,
    double wellRadius,
    double skin = 0.0,
    double completionLength = 0.0);
double wellSign(WellType type) noexcept;

} // namespace reservoir
