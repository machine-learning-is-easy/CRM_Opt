#include "resim/Fluid.h"

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

void requirePositive(double value, const char* name) {
  if (!finite(value) || value <= 0.0) {
    throw std::invalid_argument(std::string(name) + " must be positive and finite");
  }
}

void requireNonnegative(double value, const char* name) {
  if (!finite(value) || value < 0.0) {
    throw std::invalid_argument(std::string(name) + " must be nonnegative and finite");
  }
}

} // namespace

Fluid::Fluid(double waterViscosity, double oilViscosity, CoreyParams corey)
    : waterViscosity_(waterViscosity), oilViscosity_(oilViscosity), corey_(corey) {
  validate();
}

double Fluid::waterViscosity() const noexcept {
  return waterViscosity_;
}

double Fluid::oilViscosity() const noexcept {
  return oilViscosity_;
}

const CoreyParams& Fluid::corey() const noexcept {
  return corey_;
}

double Fluid::normalizedWaterSaturation(double waterSaturation) const {
  requireFinite(waterSaturation, "waterSaturation");
  const double mobileInterval = 1.0 - corey_.connateWater - corey_.residualOil;
  const double effective = (waterSaturation - corey_.connateWater) / mobileInterval;
  return std::clamp(effective, 0.0, 1.0);
}

double Fluid::waterRelPerm(double waterSaturation) const {
  const double se = normalizedWaterSaturation(waterSaturation);
  return corey_.waterRelPermEndpoint * std::pow(se, corey_.waterExponent);
}

double Fluid::oilRelPerm(double waterSaturation) const {
  const double se = normalizedWaterSaturation(waterSaturation);
  return corey_.oilRelPermEndpoint * std::pow(1.0 - se, corey_.oilExponent);
}

double Fluid::waterRelPermDerivative(double waterSaturation) const {
  requireFinite(waterSaturation, "waterSaturation");
  if (waterSaturation <= corey_.connateWater || waterSaturation >= 1.0 - corey_.residualOil) {
    return 0.0;
  }
  const double se = normalizedWaterSaturation(waterSaturation);
  const double mobileInterval = 1.0 - corey_.connateWater - corey_.residualOil;
  return corey_.waterRelPermEndpoint * corey_.waterExponent *
      std::pow(se, corey_.waterExponent - 1.0) / mobileInterval;
}

double Fluid::oilRelPermDerivative(double waterSaturation) const {
  requireFinite(waterSaturation, "waterSaturation");
  if (waterSaturation <= corey_.connateWater || waterSaturation >= 1.0 - corey_.residualOil) {
    return 0.0;
  }
  const double se = normalizedWaterSaturation(waterSaturation);
  const double mobileInterval = 1.0 - corey_.connateWater - corey_.residualOil;
  return -corey_.oilRelPermEndpoint * corey_.oilExponent *
      std::pow(1.0 - se, corey_.oilExponent - 1.0) / mobileInterval;
}

double Fluid::waterMobility(double waterSaturation) const {
  return waterRelPerm(waterSaturation) / waterViscosity_;
}

double Fluid::oilMobility(double waterSaturation) const {
  return oilRelPerm(waterSaturation) / oilViscosity_;
}

double Fluid::totalMobility(double waterSaturation) const {
  return waterMobility(waterSaturation) + oilMobility(waterSaturation);
}

double Fluid::fractionalFlowWater(double waterSaturation) const {
  const double lambdaW = waterMobility(waterSaturation);
  const double lambdaT = lambdaW + oilMobility(waterSaturation);
  if (lambdaT <= 0.0) {
    throw std::runtime_error("total mobility must be positive for fractional flow");
  }
  return lambdaW / lambdaT;
}

double Fluid::fractionalFlowWaterDerivative(double waterSaturation) const {
  const double lambdaW = waterMobility(waterSaturation);
  const double lambdaO = oilMobility(waterSaturation);
  const double lambdaT = lambdaW + lambdaO;
  if (lambdaT <= 0.0) {
    throw std::runtime_error("total mobility must be positive for fractional-flow derivative");
  }
  const double dLambdaW = waterRelPermDerivative(waterSaturation) / waterViscosity_;
  const double dLambdaO = oilRelPermDerivative(waterSaturation) / oilViscosity_;
  return (dLambdaW * lambdaT - lambdaW * (dLambdaW + dLambdaO)) / (lambdaT * lambdaT);
}

double Fluid::capillaryPressure(double waterSaturation) const {
  if (corey_.capillaryEntryPressure == 0.0) {
    requireFinite(waterSaturation, "waterSaturation");
    return 0.0;
  }
  const double se = normalizedWaterSaturation(waterSaturation);
  return corey_.capillaryEntryPressure * std::pow(1.0 - se, corey_.capillaryExponent);
}

double Fluid::capillaryPressureDerivative(double waterSaturation) const {
  requireFinite(waterSaturation, "waterSaturation");
  if (corey_.capillaryEntryPressure == 0.0 || waterSaturation <= corey_.connateWater ||
      waterSaturation >= 1.0 - corey_.residualOil) {
    return 0.0;
  }
  const double se = normalizedWaterSaturation(waterSaturation);
  const double mobileInterval = 1.0 - corey_.connateWater - corey_.residualOil;
  return -corey_.capillaryEntryPressure * corey_.capillaryExponent *
      std::pow(1.0 - se, corey_.capillaryExponent - 1.0) / mobileInterval;
}

void Fluid::validate() const {
  requirePositive(waterViscosity_, "waterViscosity");
  requirePositive(oilViscosity_, "oilViscosity");
  requireNonnegative(corey_.connateWater, "connateWater");
  requireNonnegative(corey_.residualOil, "residualOil");
  if (corey_.connateWater >= 1.0 || corey_.residualOil >= 1.0 ||
      corey_.connateWater + corey_.residualOil >= 1.0) {
    throw std::invalid_argument("connateWater + residualOil must leave a positive mobile saturation interval");
  }
  requireNonnegative(corey_.waterRelPermEndpoint, "waterRelPermEndpoint");
  requireNonnegative(corey_.oilRelPermEndpoint, "oilRelPermEndpoint");
  if (corey_.waterRelPermEndpoint == 0.0 && corey_.oilRelPermEndpoint == 0.0) {
    throw std::invalid_argument("at least one relative-permeability endpoint must be positive");
  }
  if (!finite(corey_.waterExponent) || corey_.waterExponent < 1.0) {
    throw std::invalid_argument("waterExponent must be finite and at least 1");
  }
  if (!finite(corey_.oilExponent) || corey_.oilExponent < 1.0) {
    throw std::invalid_argument("oilExponent must be finite and at least 1");
  }
  requireNonnegative(corey_.capillaryEntryPressure, "capillaryEntryPressure");
  if (!finite(corey_.capillaryExponent) || corey_.capillaryExponent < 1.0) {
    throw std::invalid_argument("capillaryExponent must be finite and at least 1");
  }
}

} // namespace reservoir
