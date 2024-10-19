#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkActorNode_Init(vtkClientServerInterpreter*);
extern void vtkCameraNode_Init(vtkClientServerInterpreter*);
extern void vtkLightNode_Init(vtkClientServerInterpreter*);
extern void vtkMapperNode_Init(vtkClientServerInterpreter*);
extern void vtkPolyDataMapperNode_Init(vtkClientServerInterpreter*);
extern void vtkRendererNode_Init(vtkClientServerInterpreter*);
extern void vtkViewNode_Init(vtkClientServerInterpreter*);
extern void vtkViewNodeFactory_Init(vtkClientServerInterpreter*);
extern void vtkVolumeMapperNode_Init(vtkClientServerInterpreter*);
extern void vtkVolumeNode_Init(vtkClientServerInterpreter*);
extern void vtkWindowNode_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingSceneGraphCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkActorNode_Init(csi);
  vtkCameraNode_Init(csi);
  vtkLightNode_Init(csi);
  vtkMapperNode_Init(csi);
  vtkPolyDataMapperNode_Init(csi);
  vtkRendererNode_Init(csi);
  vtkViewNode_Init(csi);
  vtkViewNodeFactory_Init(csi);
  vtkVolumeMapperNode_Init(csi);
  vtkVolumeNode_Init(csi);
  vtkWindowNode_Init(csi);
}
