#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkThreadedImageWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOAsynchronousCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkThreadedImageWriter_Init(csi);
}
