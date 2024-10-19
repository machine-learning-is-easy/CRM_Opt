#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkColorSeries_Init(vtkClientServerInterpreter*);
extern void vtkNamedColors_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkCommonColorCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkColorSeries_Init(csi);
  vtkNamedColors_Init(csi);
}
