#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkOpenGLContextActor_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLContextBufferId_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLContextDevice2D_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLContextDevice3D_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLPropItem_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingContextOpenGL2CS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkOpenGLContextActor_Init(csi);
  vtkOpenGLContextBufferId_Init(csi);
  vtkOpenGLContextDevice2D_Init(csi);
  vtkOpenGLContextDevice3D_Init(csi);
  vtkOpenGLPropItem_Init(csi);
}
