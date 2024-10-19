#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkConvertSelectionDomain_Init(vtkClientServerInterpreter*);
extern void vtkDataRepresentation_Init(vtkClientServerInterpreter*);
extern void vtkEmptyRepresentation_Init(vtkClientServerInterpreter*);
extern void vtkRenderViewBase_Init(vtkClientServerInterpreter*);
extern void vtkView_Init(vtkClientServerInterpreter*);
extern void vtkViewTheme_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkViewsCoreCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkConvertSelectionDomain_Init(csi);
  vtkDataRepresentation_Init(csi);
  vtkEmptyRepresentation_Init(csi);
  vtkRenderViewBase_Init(csi);
  vtkView_Init(csi);
  vtkViewTheme_Init(csi);
}
