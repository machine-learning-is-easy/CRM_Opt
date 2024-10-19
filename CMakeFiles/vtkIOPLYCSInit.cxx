#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPLY_Init(vtkClientServerInterpreter*);
extern void vtkPLYReader_Init(vtkClientServerInterpreter*);
extern void vtkPLYWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOPLYCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPLY_Init(csi);
  vtkPLYReader_Init(csi);
  vtkPLYWriter_Init(csi);
}
