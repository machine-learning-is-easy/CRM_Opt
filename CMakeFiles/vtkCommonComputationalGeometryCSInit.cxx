#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkBilinearQuadIntersection_Init(vtkClientServerInterpreter*);
extern void vtkCardinalSpline_Init(vtkClientServerInterpreter*);
extern void vtkKochanekSpline_Init(vtkClientServerInterpreter*);
extern void vtkParametricBohemianDome_Init(vtkClientServerInterpreter*);
extern void vtkParametricBour_Init(vtkClientServerInterpreter*);
extern void vtkParametricBoy_Init(vtkClientServerInterpreter*);
extern void vtkParametricCatalanMinimal_Init(vtkClientServerInterpreter*);
extern void vtkParametricConicSpiral_Init(vtkClientServerInterpreter*);
extern void vtkParametricCrossCap_Init(vtkClientServerInterpreter*);
extern void vtkParametricDini_Init(vtkClientServerInterpreter*);
extern void vtkParametricEllipsoid_Init(vtkClientServerInterpreter*);
extern void vtkParametricEnneper_Init(vtkClientServerInterpreter*);
extern void vtkParametricFigure8Klein_Init(vtkClientServerInterpreter*);
extern void vtkParametricFunction_Init(vtkClientServerInterpreter*);
extern void vtkParametricHenneberg_Init(vtkClientServerInterpreter*);
extern void vtkParametricKlein_Init(vtkClientServerInterpreter*);
extern void vtkParametricKuen_Init(vtkClientServerInterpreter*);
extern void vtkParametricMobius_Init(vtkClientServerInterpreter*);
extern void vtkParametricPluckerConoid_Init(vtkClientServerInterpreter*);
extern void vtkParametricPseudosphere_Init(vtkClientServerInterpreter*);
extern void vtkParametricRandomHills_Init(vtkClientServerInterpreter*);
extern void vtkParametricRoman_Init(vtkClientServerInterpreter*);
extern void vtkParametricSpline_Init(vtkClientServerInterpreter*);
extern void vtkParametricSuperEllipsoid_Init(vtkClientServerInterpreter*);
extern void vtkParametricSuperToroid_Init(vtkClientServerInterpreter*);
extern void vtkParametricTorus_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkCommonComputationalGeometryCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBilinearQuadIntersection_Init(csi);
  vtkCardinalSpline_Init(csi);
  vtkKochanekSpline_Init(csi);
  vtkParametricBohemianDome_Init(csi);
  vtkParametricBour_Init(csi);
  vtkParametricBoy_Init(csi);
  vtkParametricCatalanMinimal_Init(csi);
  vtkParametricConicSpiral_Init(csi);
  vtkParametricCrossCap_Init(csi);
  vtkParametricDini_Init(csi);
  vtkParametricEllipsoid_Init(csi);
  vtkParametricEnneper_Init(csi);
  vtkParametricFigure8Klein_Init(csi);
  vtkParametricFunction_Init(csi);
  vtkParametricHenneberg_Init(csi);
  vtkParametricKlein_Init(csi);
  vtkParametricKuen_Init(csi);
  vtkParametricMobius_Init(csi);
  vtkParametricPluckerConoid_Init(csi);
  vtkParametricPseudosphere_Init(csi);
  vtkParametricRandomHills_Init(csi);
  vtkParametricRoman_Init(csi);
  vtkParametricSpline_Init(csi);
  vtkParametricSuperEllipsoid_Init(csi);
  vtkParametricSuperToroid_Init(csi);
  vtkParametricTorus_Init(csi);
}
