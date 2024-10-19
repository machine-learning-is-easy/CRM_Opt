#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkStreamLinesMapper_Init(vtkClientServerInterpreter*);
extern void vtkStreamLinesRepresentation_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkStreamLinesCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkStreamLinesMapper_Init(csi);
  vtkStreamLinesRepresentation_Init(csi);
}
