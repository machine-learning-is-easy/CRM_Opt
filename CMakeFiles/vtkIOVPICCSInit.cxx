#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkVPICReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOVPICCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkVPICReader_Init(csi);
}
