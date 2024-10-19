#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkImageCanvasSource2D_Init(vtkClientServerInterpreter*);
extern void vtkImageEllipsoidSource_Init(vtkClientServerInterpreter*);
extern void vtkImageGaussianSource_Init(vtkClientServerInterpreter*);
extern void vtkImageGridSource_Init(vtkClientServerInterpreter*);
extern void vtkImageMandelbrotSource_Init(vtkClientServerInterpreter*);
extern void vtkImageNoiseSource_Init(vtkClientServerInterpreter*);
extern void vtkImageSinusoidSource_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkImagingSourcesCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkImageCanvasSource2D_Init(csi);
  vtkImageEllipsoidSource_Init(csi);
  vtkImageGaussianSource_Init(csi);
  vtkImageGridSource_Init(csi);
  vtkImageMandelbrotSource_Init(csi);
  vtkImageNoiseSource_Init(csi);
  vtkImageSinusoidSource_Init(csi);
}
