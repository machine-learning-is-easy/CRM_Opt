#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkTensorPrincipalInvariants_Init(vtkClientServerInterpreter*);
extern void vtkYieldCriteria_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersTensorCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkTensorPrincipalInvariants_Init(csi);
  vtkYieldCriteria_Init(csi);
}
