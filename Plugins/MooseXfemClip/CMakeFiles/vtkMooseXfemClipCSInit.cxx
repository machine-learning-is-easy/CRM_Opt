#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkMooseXfemClip_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkMooseXfemClipCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMooseXfemClip_Init(csi);
}
