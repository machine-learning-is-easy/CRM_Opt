#include "resim/LinearSolver.h"

#include <cmath>
#include <cstdlib>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

namespace {

void require(bool condition, const std::string& message) {
  if (!condition) {
    throw std::runtime_error(message);
  }
}

std::vector<double> residual(const reservoir::SparseMatrix& matrix,
                             const std::vector<double>& x,
                             const std::vector<double>& b) {
  std::vector<double> r = matrix.multiply(x);
  require(r.size() == b.size(), "matrix-vector product returned the wrong size");
  for (std::size_t i = 0; i < r.size(); ++i) {
    r[i] -= b[i];
  }
  return r;
}

} // namespace

int main() {
  try {
    reservoir::SparseMatrix matrix(4);
    matrix.add(0, 0, 4.0);
    matrix.add(0, 1, -1.0);
    matrix.add(1, 0, -1.0);
    matrix.add(1, 1, 4.0);
    matrix.add(1, 2, -1.0);
    matrix.add(2, 1, -1.0);
    matrix.add(2, 2, 4.0);
    matrix.add(2, 3, -1.0);
    matrix.add(3, 2, -1.0);
    matrix.add(3, 3, 3.0);

    require(matrix.isStructurallySymmetric(0.0), "test matrix must be exactly symmetric");
    matrix.validateSpdLike();

    const std::vector<double> expected{1.0, 2.0, 3.0, 4.0};
    const std::vector<double> rhs = matrix.multiply(expected);

    reservoir::LinearSolverOptions options;
    options.tolerance = 1.0e-12;
    options.maxIterations = 100;
    options.useJacobiPreconditioner = true;

    const reservoir::LinearSolverResult result = reservoir::LinearSolver::solveJacobiPcg(matrix, rhs, options);

    require(result.converged, "PCG solver did not report convergence");
    require(result.iterations > 0, "solver converged without performing an iteration");
    require(result.iterations < 20, "Jacobi-PCG took too many iterations for a 4x4 SPD system");
    require(result.x.size() == expected.size(), "solution vector has the wrong size");

    for (std::size_t i = 0; i < expected.size(); ++i) {
      require(std::abs(result.x[i] - expected[i]) < 1.0e-9,
              "solution does not match the known analytical vector");
    }

    const double residual_norm = reservoir::norm2(residual(matrix, result.x, rhs));
    require(residual_norm < 1.0e-10, "final residual norm is too large");
    require(result.residualNorm < 1.0e-10, "reported residual norm is too large");
  } catch (const std::exception& ex) {
    std::cerr << "test_linear_solver failed: " << ex.what() << '\n';
    return EXIT_FAILURE;
  }

  return EXIT_SUCCESS;
}
