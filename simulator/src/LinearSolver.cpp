#include "resim/LinearSolver.h"

#include <algorithm>
#include <cmath>
#include <limits>
#include <stdexcept>
#include <string>

namespace reservoir {
namespace {

bool finite(double value) {
  return value == value && value != std::numeric_limits<double>::infinity() &&
      value != -std::numeric_limits<double>::infinity();
}

void requireFinite(double value, const char* name) {
  if (!finite(value)) {
    throw std::invalid_argument(std::string(name) + " must be finite");
  }
}

void checkRow(const SparseMatrix& matrix, std::size_t row) {
  if (row >= matrix.rows()) {
    throw std::out_of_range("matrix row index is out of range");
  }
}

void checkIndex(const SparseMatrix& matrix, std::size_t row, std::size_t column) {
  checkRow(matrix, row);
  if (column >= matrix.cols()) {
    throw std::out_of_range("matrix column index is out of range");
  }
}

std::vector<double> subtract(const std::vector<double>& a, const std::vector<double>& b) {
  if (a.size() != b.size()) {
    throw std::invalid_argument("vector sizes must match");
  }
  std::vector<double> result(a.size(), 0.0);
  for (std::size_t i = 0; i < a.size(); ++i) {
    result[i] = a[i] - b[i];
  }
  return result;
}

std::vector<double> buildJacobiInverse(const SparseMatrix& matrix) {
  std::vector<double> inv(matrix.rows(), 1.0);
  for (std::size_t row = 0; row < matrix.rows(); ++row) {
    const double diag = matrix.diagonal(row);
    if (!(diag > 0.0) || !finite(diag)) {
      throw std::invalid_argument("Jacobi preconditioner requires positive finite diagonal entries");
    }
    inv[row] = 1.0 / diag;
  }
  return inv;
}

std::vector<double> applyDiagonal(const std::vector<double>& diagonal, const std::vector<double>& values) {
  if (diagonal.size() != values.size()) {
    throw std::invalid_argument("diagonal and vector sizes must match");
  }
  std::vector<double> result(values.size(), 0.0);
  for (std::size_t i = 0; i < values.size(); ++i) {
    result[i] = diagonal[i] * values[i];
  }
  return result;
}

} // namespace

SparseMatrix::SparseMatrix(std::size_t rows) : rows_(rows) {}

std::size_t SparseMatrix::rows() const noexcept {
  return rows_.size();
}

std::size_t SparseMatrix::cols() const noexcept {
  return rows_.size();
}

bool SparseMatrix::empty() const noexcept {
  return rows_.empty();
}

void SparseMatrix::add(std::size_t row, std::size_t column, double value) {
  checkIndex(*this, row, column);
  requireFinite(value, "matrix value");
  if (value == 0.0) {
    return;
  }
  auto& entries = rows_[row];
  auto it = std::find_if(entries.begin(), entries.end(), [column](const Entry& entry) {
    return entry.column == column;
  });
  if (it == entries.end()) {
    entries.push_back({column, value});
  } else {
    it->value += value;
    if (it->value == 0.0) {
      entries.erase(it);
    }
  }
}

void SparseMatrix::set(std::size_t row, std::size_t column, double value) {
  checkIndex(*this, row, column);
  requireFinite(value, "matrix value");
  auto& entries = rows_[row];
  auto it = std::find_if(entries.begin(), entries.end(), [column](const Entry& entry) {
    return entry.column == column;
  });
  if (it == entries.end()) {
    if (value != 0.0) {
      entries.push_back({column, value});
    }
  } else if (value == 0.0) {
    entries.erase(it);
  } else {
    it->value = value;
  }
}

double SparseMatrix::get(std::size_t row, std::size_t column) const {
  checkIndex(*this, row, column);
  const auto& entries = rows_[row];
  const auto it = std::find_if(entries.begin(), entries.end(), [column](const Entry& entry) {
    return entry.column == column;
  });
  return it == entries.end() ? 0.0 : it->value;
}

double SparseMatrix::diagonal(std::size_t row) const {
  checkRow(*this, row);
  return get(row, row);
}

const std::vector<SparseMatrix::Entry>& SparseMatrix::rowEntries(std::size_t row) const {
  checkRow(*this, row);
  return rows_[row];
}

std::vector<double> SparseMatrix::multiply(const std::vector<double>& x) const {
  validateSquare();
  if (x.size() != cols()) {
    throw std::invalid_argument("matrix-vector multiply dimension mismatch");
  }
  std::vector<double> result(rows(), 0.0);
  for (std::size_t row = 0; row < rows(); ++row) {
    for (const Entry& entry : rows_[row]) {
      result[row] += entry.value * x[entry.column];
    }
  }
  return result;
}

bool SparseMatrix::isStructurallySymmetric(double tolerance) const {
  if (tolerance < 0.0 || !finite(tolerance)) {
    throw std::invalid_argument("symmetry tolerance must be nonnegative and finite");
  }
  for (std::size_t row = 0; row < rows(); ++row) {
    for (const Entry& entry : rows_[row]) {
      if (std::abs(entry.value - get(entry.column, row)) > tolerance) {
        return false;
      }
    }
  }
  return true;
}

void SparseMatrix::validateSquare() const {
  if (empty()) {
    throw std::invalid_argument("matrix must not be empty");
  }
  for (std::size_t row = 0; row < rows(); ++row) {
    for (const Entry& entry : rows_[row]) {
      if (entry.column >= cols()) {
        throw std::invalid_argument("matrix contains a column index outside its dimensions");
      }
      requireFinite(entry.value, "matrix value");
    }
  }
}

void SparseMatrix::validateSpdLike() const {
  validateSquare();
  if (!isStructurallySymmetric(1.0e-12)) {
    throw std::invalid_argument("matrix must be symmetric for PCG");
  }
  for (std::size_t row = 0; row < rows(); ++row) {
    const double diag = diagonal(row);
    if (!(diag > 0.0) || !finite(diag)) {
      throw std::invalid_argument("matrix diagonal must be positive and finite for PCG");
    }
  }
}

LinearSolver::LinearSolver(LinearSolverOptions options) : options_(options) {
  if (options_.maxIterations == 0) {
    throw std::invalid_argument("maxIterations must be greater than zero");
  }
  if (!(options_.tolerance > 0.0) || !finite(options_.tolerance)) {
    throw std::invalid_argument("tolerance must be positive and finite");
  }
}

const LinearSolverOptions& LinearSolver::options() const noexcept {
  return options_;
}

LinearSolverResult LinearSolver::solve(
    const SparseMatrix& matrix,
    const std::vector<double>& rhs,
    const std::vector<double>& initialGuess) const {
  return solveJacobiPcg(matrix, rhs, options_, initialGuess);
}

LinearSolverResult LinearSolver::solveJacobiPcg(
    const SparseMatrix& matrix,
    const std::vector<double>& rhs,
    LinearSolverOptions options,
    const std::vector<double>& initialGuess) {
  const LinearSolver solver(options);
  (void)solver;
  matrix.validateSpdLike();
  if (rhs.size() != matrix.rows()) {
    throw std::invalid_argument("right-hand side size must match matrix rows");
  }
  for (double value : rhs) {
    requireFinite(value, "right-hand side value");
  }

  std::vector<double> x = initialGuess.empty() ? std::vector<double>(rhs.size(), 0.0) : initialGuess;
  if (x.size() != rhs.size()) {
    throw std::invalid_argument("initial guess size must match right-hand side size");
  }
  for (double value : x) {
    requireFinite(value, "initial guess value");
  }

  std::vector<double> r = subtract(rhs, matrix.multiply(x));
  const double rhsNorm = std::max(norm2(rhs), 1.0);
  double residualNorm = norm2(r);
  if (residualNorm <= options.tolerance * rhsNorm) {
    return {x, 0, residualNorm, true};
  }

  const std::vector<double> jacobiInv = options.useJacobiPreconditioner
      ? buildJacobiInverse(matrix)
      : std::vector<double>(rhs.size(), 1.0);
  std::vector<double> z = applyDiagonal(jacobiInv, r);
  std::vector<double> p = z;
  double rzOld = dot(r, z);
  if (!(rzOld > 0.0) || !finite(rzOld)) {
    throw std::runtime_error("PCG failed: nonpositive preconditioned residual product");
  }

  std::size_t iteration = 0;
  for (; iteration < options.maxIterations; ++iteration) {
    const std::vector<double> ap = matrix.multiply(p);
    const double denom = dot(p, ap);
    if (!(denom > 0.0) || !finite(denom)) {
      throw std::runtime_error("PCG failed: matrix is not positive definite along the search direction");
    }
    const double alpha = rzOld / denom;
    for (std::size_t i = 0; i < x.size(); ++i) {
      x[i] += alpha * p[i];
      r[i] -= alpha * ap[i];
    }

    residualNorm = norm2(r);
    if (residualNorm <= options.tolerance * rhsNorm) {
      return {x, iteration + 1, residualNorm, true};
    }

    z = applyDiagonal(jacobiInv, r);
    const double rzNew = dot(r, z);
    if (!(rzNew > 0.0) || !finite(rzNew)) {
      throw std::runtime_error("PCG failed: nonpositive preconditioned residual product");
    }
    const double beta = rzNew / rzOld;
    for (std::size_t i = 0; i < p.size(); ++i) {
      p[i] = z[i] + beta * p[i];
    }
    rzOld = rzNew;
  }

  return {x, iteration, residualNorm, false};
}

double dot(const std::vector<double>& a, const std::vector<double>& b) {
  if (a.size() != b.size()) {
    throw std::invalid_argument("dot-product vector sizes must match");
  }
  double result = 0.0;
  for (std::size_t i = 0; i < a.size(); ++i) {
    requireFinite(a[i], "dot-product value");
    requireFinite(b[i], "dot-product value");
    result += a[i] * b[i];
  }
  return result;
}

double norm2(const std::vector<double>& values) {
  return std::sqrt(dot(values, values));
}

} // namespace reservoir
