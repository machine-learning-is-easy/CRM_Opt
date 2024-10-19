#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkBumpMapMapper_Init(vtkClientServerInterpreter*);
extern void vtkBumpMapRepresentation_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLBumpMapMapperDelegator_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLExtrusionMapperDelegator_Init(vtkClientServerInterpreter*);
extern void vtkExtrusionMapper_Init(vtkClientServerInterpreter*);
extern void vtkExtrusionRepresentation_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkEmbossingRepresentationsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBumpMapMapper_Init(csi);
  vtkBumpMapRepresentation_Init(csi);
  vtkOpenGLBumpMapMapperDelegator_Init(csi);
  vtkOpenGLExtrusionMapperDelegator_Init(csi);
  vtkExtrusionMapper_Init(csi);
  vtkExtrusionRepresentation_Init(csi);
}
