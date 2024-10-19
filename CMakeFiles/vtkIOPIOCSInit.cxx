#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPIOReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOPIOCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPIOReader_Init(csi);
}
