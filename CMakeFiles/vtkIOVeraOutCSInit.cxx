#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkVeraOutReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOVeraOutCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkVeraOutReader_Init(csi);
}
