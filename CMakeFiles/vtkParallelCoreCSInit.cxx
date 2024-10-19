#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCommunicator_Init(vtkClientServerInterpreter*);
extern void vtkDummyCommunicator_Init(vtkClientServerInterpreter*);
extern void vtkDummyController_Init(vtkClientServerInterpreter*);
extern void vtkFieldDataSerializer_Init(vtkClientServerInterpreter*);
extern void vtkMultiProcessController_Init(vtkClientServerInterpreter*);
extern void vtkMultiProcessStream_Init(vtkClientServerInterpreter*);
extern void vtkPDirectory_Init(vtkClientServerInterpreter*);
extern void vtkProcess_Init(vtkClientServerInterpreter*);
extern void vtkProcessGroup_Init(vtkClientServerInterpreter*);
extern void vtkPSystemTools_Init(vtkClientServerInterpreter*);
extern void vtkSocketCommunicator_Init(vtkClientServerInterpreter*);
extern void vtkSocketController_Init(vtkClientServerInterpreter*);
extern void vtkSubCommunicator_Init(vtkClientServerInterpreter*);
extern void vtkSubGroup_Init(vtkClientServerInterpreter*);
extern void vtkThreadedCallbackQueue_Init(vtkClientServerInterpreter*);
extern void vtkThreadedTaskQueue_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkParallelCoreCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCommunicator_Init(csi);
  vtkDummyCommunicator_Init(csi);
  vtkDummyController_Init(csi);
  vtkFieldDataSerializer_Init(csi);
  vtkMultiProcessController_Init(csi);
  vtkMultiProcessStream_Init(csi);
  vtkPDirectory_Init(csi);
  vtkProcess_Init(csi);
  vtkProcessGroup_Init(csi);
  vtkPSystemTools_Init(csi);
  vtkSocketCommunicator_Init(csi);
  vtkSocketController_Init(csi);
  vtkSubCommunicator_Init(csi);
  vtkSubGroup_Init(csi);
  vtkThreadedCallbackQueue_Init(csi);
  vtkThreadedTaskQueue_Init(csi);
}
