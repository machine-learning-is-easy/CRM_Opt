#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkImageDivergence_Init(vtkClientServerInterpreter*);
extern void vtkImageDotProduct_Init(vtkClientServerInterpreter*);
extern void vtkImageLogarithmicScale_Init(vtkClientServerInterpreter*);
extern void vtkImageLogic_Init(vtkClientServerInterpreter*);
extern void vtkImageMagnitude_Init(vtkClientServerInterpreter*);
extern void vtkImageMaskBits_Init(vtkClientServerInterpreter*);
extern void vtkImageMathematics_Init(vtkClientServerInterpreter*);
extern void vtkImageWeightedSum_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkImagingMathCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkImageDivergence_Init(csi);
  vtkImageDotProduct_Init(csi);
  vtkImageLogarithmicScale_Init(csi);
  vtkImageLogic_Init(csi);
  vtkImageMagnitude_Init(csi);
  vtkImageMaskBits_Init(csi);
  vtkImageMathematics_Init(csi);
  vtkImageWeightedSum_Init(csi);
}
