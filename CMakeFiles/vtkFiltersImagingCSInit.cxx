#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkComputeHistogram2DOutliers_Init(vtkClientServerInterpreter*);
extern void vtkExtractHistogram2D_Init(vtkClientServerInterpreter*);
extern void vtkPairwiseExtractHistogram2D_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersImagingCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkComputeHistogram2DOutliers_Init(csi);
  vtkExtractHistogram2D_Init(csi);
  vtkPairwiseExtractHistogram2D_Init(csi);
}
