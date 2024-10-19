#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkBivariateNoiseMapper_Init(vtkClientServerInterpreter*);
extern void vtkBivariateNoiseRepresentation_Init(vtkClientServerInterpreter*);
extern void vtkBivariateTextureRepresentation_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLBivariateNoiseMapperDelegator_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkBivariateRepresentationsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBivariateNoiseMapper_Init(csi);
  vtkBivariateNoiseRepresentation_Init(csi);
  vtkBivariateTextureRepresentation_Init(csi);
  vtkOpenGLBivariateNoiseMapperDelegator_Init(csi);
}
