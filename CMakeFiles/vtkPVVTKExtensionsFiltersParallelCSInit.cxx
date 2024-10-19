#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPVGenerateProcessIds_Init(vtkClientServerInterpreter*);
extern void vtkPVRemoveGhosts_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsFiltersParallelCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPVGenerateProcessIds_Init(csi);
  vtkPVRemoveGhosts_Init(csi);
}
