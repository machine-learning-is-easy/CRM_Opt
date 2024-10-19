#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPrismGeometryConverter_Init(vtkClientServerInterpreter*);
extern void vtkSimulationPointCloudFilter_Init(vtkClientServerInterpreter*);
extern void vtkSimulationToPrismFilter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPrismFiltersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPrismGeometryConverter_Init(csi);
  vtkSimulationPointCloudFilter_Init(csi);
  vtkSimulationToPrismFilter_Init(csi);
}
