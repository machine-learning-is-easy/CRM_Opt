#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkClientServerID_Init(vtkClientServerInterpreter*);
extern void vtkClientServerInterpreter_Init(vtkClientServerInterpreter*);
extern void vtkClientServerInterpreterInitializer_Init(vtkClientServerInterpreter*);
extern void vtkClientServerStream_Init(vtkClientServerInterpreter*);
extern void vtkClientServerStreamInstantiator_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRemotingClientServerStreamCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkClientServerID_Init(csi);
  vtkClientServerInterpreter_Init(csi);
  vtkClientServerInterpreterInitializer_Init(csi);
  vtkClientServerStream_Init(csi);
  vtkClientServerStreamInstantiator_Init(csi);
}
