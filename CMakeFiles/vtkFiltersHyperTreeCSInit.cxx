#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkHyperTreeGridAxisClip_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridAxisCut_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridAxisReflection_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridCellCenters_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridContour_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridDepthLimiter_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridEvaluateCoarse_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridExtractGhostCells_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridFeatureEdges_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridGeometry_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridGradient_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridPlaneCutter_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridRemoveGhostCells_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridThreshold_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridToDualGrid_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridToUnstructuredGrid_Init(vtkClientServerInterpreter*);
extern void vtkHyperTreeGridVisibleLeavesSize_Init(vtkClientServerInterpreter*);
extern void vtkImageDataToHyperTreeGrid_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersHyperTreeCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkHyperTreeGridAxisClip_Init(csi);
  vtkHyperTreeGridAxisCut_Init(csi);
  vtkHyperTreeGridAxisReflection_Init(csi);
  vtkHyperTreeGridCellCenters_Init(csi);
  vtkHyperTreeGridContour_Init(csi);
  vtkHyperTreeGridDepthLimiter_Init(csi);
  vtkHyperTreeGridEvaluateCoarse_Init(csi);
  vtkHyperTreeGridExtractGhostCells_Init(csi);
  vtkHyperTreeGridFeatureEdges_Init(csi);
  vtkHyperTreeGridGeometry_Init(csi);
  vtkHyperTreeGridGradient_Init(csi);
  vtkHyperTreeGridPlaneCutter_Init(csi);
  vtkHyperTreeGridRemoveGhostCells_Init(csi);
  vtkHyperTreeGridThreshold_Init(csi);
  vtkHyperTreeGridToDualGrid_Init(csi);
  vtkHyperTreeGridToUnstructuredGrid_Init(csi);
  vtkHyperTreeGridVisibleLeavesSize_Init(csi);
  vtkImageDataToHyperTreeGrid_Init(csi);
}
