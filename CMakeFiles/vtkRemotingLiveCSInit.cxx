#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkExtractsDeliveryHelper_Init(vtkClientServerInterpreter*);
extern void vtkLiveInsituLink_Init(vtkClientServerInterpreter*);
extern void vtkSMInsituStateLoader_Init(vtkClientServerInterpreter*);
extern void vtkSMLiveInsituLinkProxy_Init(vtkClientServerInterpreter*);
extern void vtkSteeringDataGenerator_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRemotingLiveCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkExtractsDeliveryHelper_Init(csi);
  vtkLiveInsituLink_Init(csi);
  vtkSMInsituStateLoader_Init(csi);
  vtkSMLiveInsituLinkProxy_Init(csi);
  vtkSteeringDataGenerator_Init(csi);
}
