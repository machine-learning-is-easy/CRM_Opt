#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkParaViewDeprecation_Init(vtkClientServerInterpreter*);
extern void vtkPVVersion_Init(vtkClientServerInterpreter*);
extern void vtkPVVersionQuick_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVersioningCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkParaViewDeprecation_Init(csi);
  vtkPVVersion_Init(csi);
  vtkPVVersionQuick_Init(csi);
}
