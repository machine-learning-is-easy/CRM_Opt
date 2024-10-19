#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPLSDynaReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOParallelLSDynaCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPLSDynaReader_Init(csi);
}
