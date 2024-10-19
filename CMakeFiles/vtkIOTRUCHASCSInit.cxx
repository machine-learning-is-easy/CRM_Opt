#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkTRUCHASReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOTRUCHASCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkTRUCHASReader_Init(csi);
}
