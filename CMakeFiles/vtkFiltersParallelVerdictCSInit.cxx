#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPCellSizeFilter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersParallelVerdictCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPCellSizeFilter_Init(csi);
}
