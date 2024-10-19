#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAdaptiveSubdivisionFilter_Init(vtkClientServerInterpreter*);
extern void vtkBandedPolyDataContourFilter_Init(vtkClientServerInterpreter*);
extern void vtkButterflySubdivisionFilter_Init(vtkClientServerInterpreter*);
extern void vtkCollisionDetectionFilter_Init(vtkClientServerInterpreter*);
extern void vtkContourLoopExtraction_Init(vtkClientServerInterpreter*);
extern void vtkCookieCutter_Init(vtkClientServerInterpreter*);
extern void vtkDijkstraGraphGeodesicPath_Init(vtkClientServerInterpreter*);
extern void vtkDijkstraImageGeodesicPath_Init(vtkClientServerInterpreter*);
extern void vtkFillHolesFilter_Init(vtkClientServerInterpreter*);
extern void vtkFitToHeightMapFilter_Init(vtkClientServerInterpreter*);
extern void vtkGeodesicPath_Init(vtkClientServerInterpreter*);
extern void vtkGraphGeodesicPath_Init(vtkClientServerInterpreter*);
extern void vtkHausdorffDistancePointSetFilter_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridOutlineFilter_Init(vtkClientServerInterpreter*);
extern void vtkImageDataOutlineFilter_Init(vtkClientServerInterpreter*);
extern void vtkImprintFilter_Init(vtkClientServerInterpreter*);
extern void vtkLinearCellExtrusionFilter_Init(vtkClientServerInterpreter*);
extern void vtkLinearExtrusionFilter_Init(vtkClientServerInterpreter*);
extern void vtkLinearSubdivisionFilter_Init(vtkClientServerInterpreter*);
extern void vtkLoopSubdivisionFilter_Init(vtkClientServerInterpreter*);
extern void vtkOutlineFilter_Init(vtkClientServerInterpreter*);
extern void vtkPolyDataPointSampler_Init(vtkClientServerInterpreter*);
extern void vtkProjectedTexture_Init(vtkClientServerInterpreter*);
extern void vtkQuadRotationalExtrusionFilter_Init(vtkClientServerInterpreter*);
extern void vtkRibbonFilter_Init(vtkClientServerInterpreter*);
extern void vtkRotationalExtrusionFilter_Init(vtkClientServerInterpreter*);
extern void vtkRuledSurfaceFilter_Init(vtkClientServerInterpreter*);
extern void vtkSectorSource_Init(vtkClientServerInterpreter*);
extern void vtkSelectEnclosedPoints_Init(vtkClientServerInterpreter*);
extern void vtkSelectPolyData_Init(vtkClientServerInterpreter*);
extern void vtkSpherePuzzle_Init(vtkClientServerInterpreter*);
extern void vtkSpherePuzzleArrows_Init(vtkClientServerInterpreter*);
extern void vtkSubdivideTetra_Init(vtkClientServerInterpreter*);
extern void vtkTrimmedExtrusionFilter_Init(vtkClientServerInterpreter*);
extern void vtkVolumeOfRevolutionFilter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersModelingCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAdaptiveSubdivisionFilter_Init(csi);
  vtkBandedPolyDataContourFilter_Init(csi);
  vtkButterflySubdivisionFilter_Init(csi);
  vtkCollisionDetectionFilter_Init(csi);
  vtkContourLoopExtraction_Init(csi);
  vtkCookieCutter_Init(csi);
  vtkDijkstraGraphGeodesicPath_Init(csi);
  vtkDijkstraImageGeodesicPath_Init(csi);
  vtkFillHolesFilter_Init(csi);
  vtkFitToHeightMapFilter_Init(csi);
  vtkGeodesicPath_Init(csi);
  vtkGraphGeodesicPath_Init(csi);
  vtkHausdorffDistancePointSetFilter_Init(csi);
  vtkHyperTreeGridOutlineFilter_Init(csi);
  vtkImageDataOutlineFilter_Init(csi);
  vtkImprintFilter_Init(csi);
  vtkLinearCellExtrusionFilter_Init(csi);
  vtkLinearExtrusionFilter_Init(csi);
  vtkLinearSubdivisionFilter_Init(csi);
  vtkLoopSubdivisionFilter_Init(csi);
  vtkOutlineFilter_Init(csi);
  vtkPolyDataPointSampler_Init(csi);
  vtkProjectedTexture_Init(csi);
  vtkQuadRotationalExtrusionFilter_Init(csi);
  vtkRibbonFilter_Init(csi);
  vtkRotationalExtrusionFilter_Init(csi);
  vtkRuledSurfaceFilter_Init(csi);
  vtkSectorSource_Init(csi);
  vtkSelectEnclosedPoints_Init(csi);
  vtkSelectPolyData_Init(csi);
  vtkSpherePuzzle_Init(csi);
  vtkSpherePuzzleArrows_Init(csi);
  vtkSubdivideTetra_Init(csi);
  vtkTrimmedExtrusionFilter_Init(csi);
  vtkVolumeOfRevolutionFilter_Init(csi);
}
