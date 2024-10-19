#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkContourLabelRepresentation_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkContourLabelPluginCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkContourLabelRepresentation_Init(csi);
}
