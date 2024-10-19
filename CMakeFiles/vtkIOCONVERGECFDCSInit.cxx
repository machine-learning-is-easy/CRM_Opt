#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCONVERGECFDReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOCONVERGECFDCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCONVERGECFDReader_Init(csi);
}
