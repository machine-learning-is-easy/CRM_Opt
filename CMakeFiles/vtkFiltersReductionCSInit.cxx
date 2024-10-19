#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkToAffineArrayStrategy_Init(vtkClientServerInterpreter*);
extern void vtkToConstantArrayStrategy_Init(vtkClientServerInterpreter*);
extern void vtkToImplicitArrayFilter_Init(vtkClientServerInterpreter*);
extern void vtkToImplicitRamerDouglasPeuckerStrategy_Init(vtkClientServerInterpreter*);
extern void vtkToImplicitStrategy_Init(vtkClientServerInterpreter*);
extern void vtkToImplicitTypeErasureStrategy_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersReductionCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkToAffineArrayStrategy_Init(csi);
  vtkToConstantArrayStrategy_Init(csi);
  vtkToImplicitArrayFilter_Init(csi);
  vtkToImplicitRamerDouglasPeuckerStrategy_Init(csi);
  vtkToImplicitStrategy_Init(csi);
  vtkToImplicitTypeErasureStrategy_Init(csi);
}
