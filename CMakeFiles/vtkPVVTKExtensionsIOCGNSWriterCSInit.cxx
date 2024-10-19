#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCGNSWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsIOCGNSWriterCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCGNSWriter_Init(csi);
}
