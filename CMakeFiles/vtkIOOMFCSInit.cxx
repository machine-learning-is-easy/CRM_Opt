#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkOMFReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOOMFCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkOMFReader_Init(csi);
}
