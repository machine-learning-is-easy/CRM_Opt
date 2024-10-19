#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPVStereoCursorView_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT StereoCursorViewsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPVStereoCursorView_Init(csi);
}
