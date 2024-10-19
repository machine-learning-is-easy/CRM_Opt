#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAMRCutPlane_Init(vtkClientServerInterpreter*);
extern void vtkAMRGaussianPulseSource_Init(vtkClientServerInterpreter*);
extern void vtkAMRResampleFilter_Init(vtkClientServerInterpreter*);
extern void vtkAMRSliceFilter_Init(vtkClientServerInterpreter*);
extern void vtkAMRToMultiBlockFilter_Init(vtkClientServerInterpreter*);
extern void vtkImageToAMR_Init(vtkClientServerInterpreter*);
extern void vtkParallelAMRUtilities_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersAMRCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAMRCutPlane_Init(csi);
  vtkAMRGaussianPulseSource_Init(csi);
  vtkAMRResampleFilter_Init(csi);
  vtkAMRSliceFilter_Init(csi);
  vtkAMRToMultiBlockFilter_Init(csi);
  vtkImageToAMR_Init(csi);
  vtkParallelAMRUtilities_Init(csi);
}
