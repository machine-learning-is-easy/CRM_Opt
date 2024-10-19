#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkContextInteractorStyle_Init(vtkClientServerInterpreter*);
extern void vtkContextView_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkViewsContext2DCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkContextInteractorStyle_Init(csi);
  vtkContextView_Init(csi);
}
