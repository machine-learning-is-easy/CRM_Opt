#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkImageAnisotropicDiffusion2D_Init(vtkClientServerInterpreter*);
extern void vtkImageAnisotropicDiffusion3D_Init(vtkClientServerInterpreter*);
extern void vtkImageCheckerboard_Init(vtkClientServerInterpreter*);
extern void vtkImageCityBlockDistance_Init(vtkClientServerInterpreter*);
extern void vtkImageConvolve_Init(vtkClientServerInterpreter*);
extern void vtkImageCorrelation_Init(vtkClientServerInterpreter*);
extern void vtkImageEuclideanDistance_Init(vtkClientServerInterpreter*);
extern void vtkImageEuclideanToPolar_Init(vtkClientServerInterpreter*);
extern void vtkImageGaussianSmooth_Init(vtkClientServerInterpreter*);
extern void vtkImageGradient_Init(vtkClientServerInterpreter*);
extern void vtkImageGradientMagnitude_Init(vtkClientServerInterpreter*);
extern void vtkImageHybridMedian2D_Init(vtkClientServerInterpreter*);
extern void vtkImageLaplacian_Init(vtkClientServerInterpreter*);
extern void vtkImageMedian3D_Init(vtkClientServerInterpreter*);
extern void vtkImageNormalize_Init(vtkClientServerInterpreter*);
extern void vtkImageRange3D_Init(vtkClientServerInterpreter*);
extern void vtkImageSeparableConvolution_Init(vtkClientServerInterpreter*);
extern void vtkImageSlab_Init(vtkClientServerInterpreter*);
extern void vtkImageSlabReslice_Init(vtkClientServerInterpreter*);
extern void vtkImageSobel2D_Init(vtkClientServerInterpreter*);
extern void vtkImageSobel3D_Init(vtkClientServerInterpreter*);
extern void vtkImageSpatialAlgorithm_Init(vtkClientServerInterpreter*);
extern void vtkImageVariance3D_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkImagingGeneralCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkImageAnisotropicDiffusion2D_Init(csi);
  vtkImageAnisotropicDiffusion3D_Init(csi);
  vtkImageCheckerboard_Init(csi);
  vtkImageCityBlockDistance_Init(csi);
  vtkImageConvolve_Init(csi);
  vtkImageCorrelation_Init(csi);
  vtkImageEuclideanDistance_Init(csi);
  vtkImageEuclideanToPolar_Init(csi);
  vtkImageGaussianSmooth_Init(csi);
  vtkImageGradient_Init(csi);
  vtkImageGradientMagnitude_Init(csi);
  vtkImageHybridMedian2D_Init(csi);
  vtkImageLaplacian_Init(csi);
  vtkImageMedian3D_Init(csi);
  vtkImageNormalize_Init(csi);
  vtkImageRange3D_Init(csi);
  vtkImageSeparableConvolution_Init(csi);
  vtkImageSlab_Init(csi);
  vtkImageSlabReslice_Init(csi);
  vtkImageSobel2D_Init(csi);
  vtkImageSobel3D_Init(csi);
  vtkImageSpatialAlgorithm_Init(csi);
  vtkImageVariance3D_Init(csi);
}
