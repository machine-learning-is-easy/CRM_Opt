#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkMultiBlockUnstructuredGridVolumeMapper_Init(vtkClientServerInterpreter*);
extern void vtkMultiBlockVolumeMapper_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLGPUVolumeRayCastMapper_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLProjectedTetrahedraMapper_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLRayCastImageDisplayHelper_Init(vtkClientServerInterpreter*);
extern void vtkSmartVolumeMapper_Init(vtkClientServerInterpreter*);
extern void vtkVolumeTexture_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingVolumeOpenGL2CS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMultiBlockUnstructuredGridVolumeMapper_Init(csi);
  vtkMultiBlockVolumeMapper_Init(csi);
  vtkOpenGLGPUVolumeRayCastMapper_Init(csi);
  vtkOpenGLProjectedTetrahedraMapper_Init(csi);
  vtkOpenGLRayCastImageDisplayHelper_Init(csi);
  vtkSmartVolumeMapper_Init(csi);
  vtkVolumeTexture_Init(csi);
}
