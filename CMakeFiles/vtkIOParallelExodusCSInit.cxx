#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPExodusIIReader_Init(vtkClientServerInterpreter*);
extern void vtkPExodusIIWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOParallelExodusCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPExodusIIReader_Init(csi);
  vtkPExodusIIWriter_Init(csi);
}
