#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkMaterialInterfaceIdListItem_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfaceUtilities_Init(vtkClientServerInterpreter*);
extern void vtkIntersectFragments_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfaceCommBuffer_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfaceFilter_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfaceIdList_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfacePieceLoading_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfacePieceTransaction_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfacePieceTransactionMatrix_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfaceProcessLoading_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfaceProcessRing_Init(vtkClientServerInterpreter*);
extern void vtkMaterialInterfaceToProcMap_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsFiltersMaterialInterfaceCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMaterialInterfaceIdListItem_Init(csi);
  vtkMaterialInterfaceUtilities_Init(csi);
  vtkIntersectFragments_Init(csi);
  vtkMaterialInterfaceCommBuffer_Init(csi);
  vtkMaterialInterfaceFilter_Init(csi);
  vtkMaterialInterfaceIdList_Init(csi);
  vtkMaterialInterfacePieceLoading_Init(csi);
  vtkMaterialInterfacePieceTransaction_Init(csi);
  vtkMaterialInterfacePieceTransactionMatrix_Init(csi);
  vtkMaterialInterfaceProcessLoading_Init(csi);
  vtkMaterialInterfaceProcessRing_Init(csi);
  vtkMaterialInterfaceToProcMap_Init(csi);
}
