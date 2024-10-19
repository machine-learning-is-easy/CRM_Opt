#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkExplicitStructuredGridGeneratorSource_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkExplicitStructuredGridCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkExplicitStructuredGridGeneratorSource_Init(csi);
}
