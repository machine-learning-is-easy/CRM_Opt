#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPainterCommunicator_Init(vtkClientServerInterpreter*);
extern void vtkBatchedSurfaceLICMapper_Init(vtkClientServerInterpreter*);
extern void vtkCompositeSurfaceLICMapper_Init(vtkClientServerInterpreter*);
extern void vtkCompositeSurfaceLICMapperDelegator_Init(vtkClientServerInterpreter*);
extern void vtkImageDataLIC2D_Init(vtkClientServerInterpreter*);
extern void vtkLineIntegralConvolution2D_Init(vtkClientServerInterpreter*);
extern void vtkStructuredGridLIC2D_Init(vtkClientServerInterpreter*);
extern void vtkSurfaceLICComposite_Init(vtkClientServerInterpreter*);
extern void vtkSurfaceLICInterface_Init(vtkClientServerInterpreter*);
extern void vtkSurfaceLICMapper_Init(vtkClientServerInterpreter*);
extern void vtkTextureIO_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingLICOpenGL2CS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPainterCommunicator_Init(csi);
  vtkBatchedSurfaceLICMapper_Init(csi);
  vtkCompositeSurfaceLICMapper_Init(csi);
  vtkCompositeSurfaceLICMapperDelegator_Init(csi);
  vtkImageDataLIC2D_Init(csi);
  vtkLineIntegralConvolution2D_Init(csi);
  vtkStructuredGridLIC2D_Init(csi);
  vtkSurfaceLICComposite_Init(csi);
  vtkSurfaceLICInterface_Init(csi);
  vtkSurfaceLICMapper_Init(csi);
  vtkTextureIO_Init(csi);
}
