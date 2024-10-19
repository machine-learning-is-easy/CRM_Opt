#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkOpenGLGL2PSHelperImpl_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingGL2PSOpenGL2CS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkOpenGLGL2PSHelperImpl_Init(csi);
}
