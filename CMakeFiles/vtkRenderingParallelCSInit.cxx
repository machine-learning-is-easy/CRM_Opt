#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCompositeZPassFS_Init(vtkClientServerInterpreter*);
extern void vtkClientServerCompositePass_Init(vtkClientServerInterpreter*);
extern void vtkClientServerSynchronizedRenderers_Init(vtkClientServerInterpreter*);
extern void vtkCompositedSynchronizedRenderers_Init(vtkClientServerInterpreter*);
extern void vtkCompositer_Init(vtkClientServerInterpreter*);
extern void vtkCompositeRenderManager_Init(vtkClientServerInterpreter*);
extern void vtkCompositeRGBAPass_Init(vtkClientServerInterpreter*);
extern void vtkCompositeZPass_Init(vtkClientServerInterpreter*);
extern void vtkCompressCompositer_Init(vtkClientServerInterpreter*);
extern void vtkImageRenderManager_Init(vtkClientServerInterpreter*);
extern void vtkParallelRenderManager_Init(vtkClientServerInterpreter*);
extern void vtkPHardwareSelector_Init(vtkClientServerInterpreter*);
extern void vtkSynchronizedRenderers_Init(vtkClientServerInterpreter*);
extern void vtkSynchronizedRenderWindows_Init(vtkClientServerInterpreter*);
extern void vtkTreeCompositer_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingParallelCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCompositeZPassFS_Init(csi);
  vtkClientServerCompositePass_Init(csi);
  vtkClientServerSynchronizedRenderers_Init(csi);
  vtkCompositedSynchronizedRenderers_Init(csi);
  vtkCompositer_Init(csi);
  vtkCompositeRenderManager_Init(csi);
  vtkCompositeRGBAPass_Init(csi);
  vtkCompositeZPass_Init(csi);
  vtkCompressCompositer_Init(csi);
  vtkImageRenderManager_Init(csi);
  vtkParallelRenderManager_Init(csi);
  vtkPHardwareSelector_Init(csi);
  vtkSynchronizedRenderers_Init(csi);
  vtkSynchronizedRenderWindows_Init(csi);
  vtkTreeCompositer_Init(csi);
}
