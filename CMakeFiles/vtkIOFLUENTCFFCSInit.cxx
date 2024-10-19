#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkFLUENTCFFReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOFLUENTCFFCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkFLUENTCFFReader_Init(csi);
}
