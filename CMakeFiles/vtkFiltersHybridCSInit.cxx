#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAdaptiveDataSetSurfaceFilter_Init(vtkClientServerInterpreter*);
extern void vtkBSplineTransform_Init(vtkClientServerInterpreter*);
extern void vtkDepthSortPolyData_Init(vtkClientServerInterpreter*);
extern void vtkDSPFilterDefinition_Init(vtkClientServerInterpreter*);
extern void vtkDSPFilterGroup_Init(vtkClientServerInterpreter*);
extern void vtkEarthSource_Init(vtkClientServerInterpreter*);
extern void vtkFacetReader_Init(vtkClientServerInterpreter*);
extern void vtkForceTime_Init(vtkClientServerInterpreter*);
extern void vtkGenerateTimeSteps_Init(vtkClientServerInterpreter*);
extern void vtkGreedyTerrainDecimation_Init(vtkClientServerInterpreter*);
extern void vtkGridTransform_Init(vtkClientServerInterpreter*);
extern void vtkImageToPolyDataFilter_Init(vtkClientServerInterpreter*);
extern void vtkImplicitModeller_Init(vtkClientServerInterpreter*);
extern void vtkPCAAnalysisFilter_Init(vtkClientServerInterpreter*);
extern void vtkPolyDataSilhouette_Init(vtkClientServerInterpreter*);
extern void vtkProcrustesAlignmentFilter_Init(vtkClientServerInterpreter*);
extern void vtkProjectedTerrainPath_Init(vtkClientServerInterpreter*);
extern void vtkRenderLargeImage_Init(vtkClientServerInterpreter*);
extern void vtkTemporalArrayOperatorFilter_Init(vtkClientServerInterpreter*);
extern void vtkTemporalDataSetCache_Init(vtkClientServerInterpreter*);
extern void vtkTemporalFractal_Init(vtkClientServerInterpreter*);
extern void vtkTemporalInterpolator_Init(vtkClientServerInterpreter*);
extern void vtkTemporalShiftScale_Init(vtkClientServerInterpreter*);
extern void vtkTemporalSnapToTimeStep_Init(vtkClientServerInterpreter*);
extern void vtkTransformToGrid_Init(vtkClientServerInterpreter*);
extern void vtkWeightedTransformFilter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersHybridCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAdaptiveDataSetSurfaceFilter_Init(csi);
  vtkBSplineTransform_Init(csi);
  vtkDepthSortPolyData_Init(csi);
  vtkDSPFilterDefinition_Init(csi);
  vtkDSPFilterGroup_Init(csi);
  vtkEarthSource_Init(csi);
  vtkFacetReader_Init(csi);
  vtkForceTime_Init(csi);
  vtkGenerateTimeSteps_Init(csi);
  vtkGreedyTerrainDecimation_Init(csi);
  vtkGridTransform_Init(csi);
  vtkImageToPolyDataFilter_Init(csi);
  vtkImplicitModeller_Init(csi);
  vtkPCAAnalysisFilter_Init(csi);
  vtkPolyDataSilhouette_Init(csi);
  vtkProcrustesAlignmentFilter_Init(csi);
  vtkProjectedTerrainPath_Init(csi);
  vtkRenderLargeImage_Init(csi);
  vtkTemporalArrayOperatorFilter_Init(csi);
  vtkTemporalDataSetCache_Init(csi);
  vtkTemporalFractal_Init(csi);
  vtkTemporalInterpolator_Init(csi);
  vtkTemporalShiftScale_Init(csi);
  vtkTemporalSnapToTimeStep_Init(csi);
  vtkTransformToGrid_Init(csi);
  vtkWeightedTransformFilter_Init(csi);
}
