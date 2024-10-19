#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkImageButterworthHighPass_Init(vtkClientServerInterpreter*);
extern void vtkImageButterworthLowPass_Init(vtkClientServerInterpreter*);
extern void vtkImageFFT_Init(vtkClientServerInterpreter*);
extern void vtkImageFourierCenter_Init(vtkClientServerInterpreter*);
extern void vtkImageFourierFilter_Init(vtkClientServerInterpreter*);
extern void vtkImageIdealHighPass_Init(vtkClientServerInterpreter*);
extern void vtkImageIdealLowPass_Init(vtkClientServerInterpreter*);
extern void vtkImageRFFT_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkImagingFourierCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkImageButterworthHighPass_Init(csi);
  vtkImageButterworthLowPass_Init(csi);
  vtkImageFFT_Init(csi);
  vtkImageFourierCenter_Init(csi);
  vtkImageFourierFilter_Init(csi);
  vtkImageIdealHighPass_Init(csi);
  vtkImageIdealLowPass_Init(csi);
  vtkImageRFFT_Init(csi);
}
