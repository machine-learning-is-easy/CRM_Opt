#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkTecplotTableReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOTecplotTableCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkTecplotTableReader_Init(csi);
}
