#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkDynamic2DLabelMapper_Init(vtkClientServerInterpreter*);
extern void vtkFreeTypeLabelRenderStrategy_Init(vtkClientServerInterpreter*);
extern void vtkLabeledDataMapper_Init(vtkClientServerInterpreter*);
extern void vtkLabeledTreeMapDataMapper_Init(vtkClientServerInterpreter*);
extern void vtkLabelHierarchy_Init(vtkClientServerInterpreter*);
extern void vtkLabelHierarchyAlgorithm_Init(vtkClientServerInterpreter*);
extern void vtkLabelHierarchyCompositeIterator_Init(vtkClientServerInterpreter*);
extern void vtkLabelHierarchyIterator_Init(vtkClientServerInterpreter*);
extern void vtkLabelPlacementMapper_Init(vtkClientServerInterpreter*);
extern void vtkLabelPlacer_Init(vtkClientServerInterpreter*);
extern void vtkLabelRenderStrategy_Init(vtkClientServerInterpreter*);
extern void vtkLabelSizeCalculator_Init(vtkClientServerInterpreter*);
extern void vtkPointSetToLabelHierarchy_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingLabelCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkDynamic2DLabelMapper_Init(csi);
  vtkFreeTypeLabelRenderStrategy_Init(csi);
  vtkLabeledDataMapper_Init(csi);
  vtkLabeledTreeMapDataMapper_Init(csi);
  vtkLabelHierarchy_Init(csi);
  vtkLabelHierarchyAlgorithm_Init(csi);
  vtkLabelHierarchyCompositeIterator_Init(csi);
  vtkLabelHierarchyIterator_Init(csi);
  vtkLabelPlacementMapper_Init(csi);
  vtkLabelPlacer_Init(csi);
  vtkLabelRenderStrategy_Init(csi);
  vtkLabelSizeCalculator_Init(csi);
  vtkPointSetToLabelHierarchy_Init(csi);
}
