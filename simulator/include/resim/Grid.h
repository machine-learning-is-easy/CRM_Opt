#pragma once

#include <array>
#include <cstddef>
#include <optional>

namespace reservoir {

struct Index3 {
  std::size_t i = 0;
  std::size_t j = 0;
  std::size_t k = 0;
};

struct Point3 {
  double x = 0.0;
  double y = 0.0;
  double z = 0.0;
};

enum class Direction {
  XMinus = 0,
  XPlus = 1,
  YMinus = 2,
  YPlus = 3,
  ZMinus = 4,
  ZPlus = 5,
};

class Grid {
 public:
  Grid() = default;
  Grid(std::size_t nx, std::size_t ny, std::size_t nz, double dx, double dy, double dz);

  static Grid fromExtents(
      std::size_t nx,
      std::size_t ny,
      std::size_t nz,
      double lx,
      double ly,
      double lz);

  std::size_t nx() const noexcept;
  std::size_t ny() const noexcept;
  std::size_t nz() const noexcept;
  double dx() const noexcept;
  double dy() const noexcept;
  double dz() const noexcept;

  std::size_t cellCount() const noexcept;
  bool empty() const noexcept;
  double cellVolume() const noexcept;

  bool contains(std::size_t i, std::size_t j, std::size_t k) const noexcept;
  bool containsCell(std::size_t cell) const noexcept;
  std::size_t index(std::size_t i, std::size_t j, std::size_t k) const;
  Index3 ijk(std::size_t cell) const;
  Point3 cellCenter(std::size_t cell) const;

  std::optional<std::size_t> neighbor(std::size_t cell, Direction direction) const;
  std::array<std::optional<std::size_t>, 6> neighbors(std::size_t cell) const;

  void validate() const;

 private:
  std::size_t nx_ = 0;
  std::size_t ny_ = 0;
  std::size_t nz_ = 0;
  double dx_ = 0.0;
  double dy_ = 0.0;
  double dz_ = 0.0;
};

} // namespace reservoir
