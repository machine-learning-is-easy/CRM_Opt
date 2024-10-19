#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkClientSocket_Init(vtkClientServerInterpreter*);
extern void vtkDirectory_Init(vtkClientServerInterpreter*);
extern void vtkExecutableRunner_Init(vtkClientServerInterpreter*);
extern void vtkServerSocket_Init(vtkClientServerInterpreter*);
extern void vtkSocket_Init(vtkClientServerInterpreter*);
extern void vtkSocketCollection_Init(vtkClientServerInterpreter*);
extern void vtkTimerLog_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkCommonSystemCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkClientSocket_Init(csi);
  vtkDirectory_Init(csi);
  vtkExecutableRunner_Init(csi);
  vtkServerSocket_Init(csi);
  vtkSocket_Init(csi);
  vtkSocketCollection_Init(csi);
  vtkTimerLog_Init(csi);
}
