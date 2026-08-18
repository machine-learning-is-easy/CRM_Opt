#pragma once

namespace reservoir {

struct CoreyParams {
  double connateWater = 0.2;
  double residualOil = 0.2;
  double waterRelPermEndpoint = 1.0;
  double oilRelPermEndpoint = 1.0;
  double waterExponent = 2.0;
  double oilExponent = 2.0;
  double capillaryEntryPressure = 0.0;
  double capillaryExponent = 2.0;
};

class Fluid {
 public:
  Fluid() = default;
  Fluid(double waterViscosity, double oilViscosity, CoreyParams corey = CoreyParams{});

  double waterViscosity() const noexcept;
  double oilViscosity() const noexcept;
  const CoreyParams& corey() const noexcept;

  double normalizedWaterSaturation(double waterSaturation) const;
  double waterRelPerm(double waterSaturation) const;
  double oilRelPerm(double waterSaturation) const;
  double waterRelPermDerivative(double waterSaturation) const;
  double oilRelPermDerivative(double waterSaturation) const;

  double waterMobility(double waterSaturation) const;
  double oilMobility(double waterSaturation) const;
  double totalMobility(double waterSaturation) const;
  double fractionalFlowWater(double waterSaturation) const;
  double fractionalFlowWaterDerivative(double waterSaturation) const;

  double capillaryPressure(double waterSaturation) const;
  double capillaryPressureDerivative(double waterSaturation) const;

  void validate() const;

 private:
  double waterViscosity_ = 1.0;
  double oilViscosity_ = 5.0;
  CoreyParams corey_;
};

} // namespace reservoir
