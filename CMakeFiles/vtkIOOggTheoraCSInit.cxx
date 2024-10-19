#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkOggTheoraWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOOggTheoraCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkOggTheoraWriter_Init(csi);
}
