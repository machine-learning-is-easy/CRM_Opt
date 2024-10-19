#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkSegYReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOSegYCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkSegYReader_Init(csi);
}
