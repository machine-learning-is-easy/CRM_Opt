#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPMaterialClusterAnalysisFilter_Init(vtkClientServerInterpreter*);
extern void vtkPMaterialClusterExplodeFilter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkDigitalRocksFiltersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPMaterialClusterAnalysisFilter_Init(csi);
  vtkPMaterialClusterExplodeFilter_Init(csi);
}
