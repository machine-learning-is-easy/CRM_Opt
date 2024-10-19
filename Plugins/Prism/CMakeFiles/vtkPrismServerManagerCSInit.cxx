#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkSMPrismIsSimulationDataDomain_Init(vtkClientServerInterpreter*);
extern void vtkSMPrismTableArraysDomain_Init(vtkClientServerInterpreter*);
extern void vtkSMPrismThresholdRangeDomain_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPrismServerManagerCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkSMPrismIsSimulationDataDomain_Init(csi);
  vtkSMPrismTableArraysDomain_Init(csi);
  vtkSMPrismThresholdRangeDomain_Init(csi);
}
