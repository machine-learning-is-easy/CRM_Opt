#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkGenericRenderWindowInteractor_Init(vtkClientServerInterpreter*);
extern void vtkWin32HardwareWindow_Init(vtkClientServerInterpreter*);
extern void vtkWin32RenderWindowInteractor_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingUICS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkGenericRenderWindowInteractor_Init(csi);
  vtkWin32HardwareWindow_Init(csi);
  vtkWin32RenderWindowInteractor_Init(csi);
}
