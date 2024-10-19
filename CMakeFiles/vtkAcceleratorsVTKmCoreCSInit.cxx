#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkmConfigCore_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkAcceleratorsVTKmCoreCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkmConfigCore_Init(csi);
}
