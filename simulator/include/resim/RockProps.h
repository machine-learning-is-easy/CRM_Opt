#pragma once

#include "resim/Grid.h"

#include <cstddef>
#include <vector>

namespace reservoir {

class RockProps {
 public:
  RockProps() = default;
  RockProps(
      std::vector<double> porosity,
      std::vector<double> permeabilityX,
      std::vector<double> permeabilityY,
      std::vector<double> permeabilityZ);

  static RockProps uniform(const Grid& grid, double porosity, double permeability);
  static RockProps uniform(
      const Grid& grid,
      double porosity,
      double permeabilityX,
      double permeabilityY,
      double permeabilityZ);

  std::size_t size() const noexcept;
  bool empty() const noexcept;

  double porosity(std::size_t cell) const;
  double permeabilityX(std::size_t cell) const;
  double permeabilityY(std::size_t cell) const;
  double permeabilityZ(std::size_t cell) const;

  const std::vector<double>& porosity() const noexcept;
  const std::vector<double>& permeabilityX() const noexcept;
  const std::vector<double>& permeabilityY() const noexcept;
  const std::vector<double>& permeabilityZ() const noexcept;

  double poreVolume(const Grid& grid, std::size_t cell) const;
  double totalPoreVolume(const Grid& grid) const;

  void validate() const;
  void validateForGrid(const Grid& grid) const;

 private:
  std::vector<double> porosity_;
  std::vector<double> permeabilityX_;
  std::vector<double> permeabilityY_;
  std::vector<double> permeabilityZ_;
};

} // namespace reservoir
