#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkVtkJSSceneGraphSerializer_Init(vtkClientServerInterpreter*);
extern void vtkVtkJSViewNodeFactory_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingVtkJSCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkVtkJSSceneGraphSerializer_Init(csi);
  vtkVtkJSViewNodeFactory_Init(csi);
}
