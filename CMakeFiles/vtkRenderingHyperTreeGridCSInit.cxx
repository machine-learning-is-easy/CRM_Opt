#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkHyperTreeGridMapper_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingHyperTreeGridCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkHyperTreeGridMapper_Init(csi);
}
