#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkImageHSIToRGB_Init(vtkClientServerInterpreter*);
extern void vtkImageHSVToRGB_Init(vtkClientServerInterpreter*);
extern void vtkImageLuminance_Init(vtkClientServerInterpreter*);
extern void vtkImageMapToRGBA_Init(vtkClientServerInterpreter*);
extern void vtkImageMapToWindowLevelColors_Init(vtkClientServerInterpreter*);
extern void vtkImageQuantizeRGBToIndex_Init(vtkClientServerInterpreter*);
extern void vtkImageRGBToHSI_Init(vtkClientServerInterpreter*);
extern void vtkImageRGBToHSV_Init(vtkClientServerInterpreter*);
extern void vtkImageRGBToXYZ_Init(vtkClientServerInterpreter*);
extern void vtkImageRGBToYIQ_Init(vtkClientServerInterpreter*);
extern void vtkImageXYZToLAB_Init(vtkClientServerInterpreter*);
extern void vtkImageYIQToRGB_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkImagingColorCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkImageHSIToRGB_Init(csi);
  vtkImageHSVToRGB_Init(csi);
  vtkImageLuminance_Init(csi);
  vtkImageMapToRGBA_Init(csi);
  vtkImageMapToWindowLevelColors_Init(csi);
  vtkImageQuantizeRGBToIndex_Init(csi);
  vtkImageRGBToHSI_Init(csi);
  vtkImageRGBToHSV_Init(csi);
  vtkImageRGBToXYZ_Init(csi);
  vtkImageRGBToYIQ_Init(csi);
  vtkImageXYZToLAB_Init(csi);
  vtkImageYIQToRGB_Init(csi);
}
