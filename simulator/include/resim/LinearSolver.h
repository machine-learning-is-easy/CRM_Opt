#pragma once

#include <cstddef>
#include <vector>

namespace reservoir {

class SparseMatrix {
 public:
  struct Entry {
    std::size_t column = 0;
    double value = 0.0;
  };

  SparseMatrix() = default;
  explicit SparseMatrix(std::size_t rows);

  std::size_t rows() const noexcept;
  std::size_t cols() const noexcept;
  bool empty() const noexcept;

  void add(std::size_t row, std::size_t column, double value);
  void set(std::size_t row, std::size_t column, double value);
  double get(std::size_t row, std::size_t column) const;
  double diagonal(std::size_t row) const;
  const std::vector<Entry>& rowEntries(std::size_t row) const;

  std::vector<double> multiply(const std::vector<double>& x) const;
  bool isStructurallySymmetric(double tolerance = 0.0) const;
  void validateSquare() const;
  void validateSpdLike() const;

 private:
  std::vector<std::vector<Entry>> rows_;
};

struct LinearSolverOptions {
  std::size_t maxIterations = 1000;
  double tolerance = 1.0e-10;
  bool useJacobiPreconditioner = true;
};

struct LinearSolverResult {
  std::vector<double> x;
  std::size_t iterations = 0;
  double residualNorm = 0.0;
  bool converged = false;
};

class LinearSolver {
 public:
  explicit LinearSolver(LinearSolverOptions options = LinearSolverOptions{});

  const LinearSolverOptions& options() const noexcept;
  LinearSolverResult solve(
      const SparseMatrix& matrix,
      const std::vector<double>& rhs,
      const std::vector<double>& initialGuess = {}) const;

  static LinearSolverResult solveJacobiPcg(
      const SparseMatrix& matrix,
      const std::vector<double>& rhs,
      LinearSolverOptions options = LinearSolverOptions{},
      const std::vector<double>& initialGuess = {});

 private:
  LinearSolverOptions options_;
};

double dot(const std::vector<double>& a, const std::vector<double>& b);
double norm2(const std::vector<double>& values);

} // namespace reservoir
