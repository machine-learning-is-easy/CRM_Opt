#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPVGenerateGlobalIds_Init(vtkClientServerInterpreter*);
extern void vtkPVGhostCellsGenerator_Init(vtkClientServerInterpreter*);
extern void vtkPVProbeLineFilter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsFiltersParallelDIY2CS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPVGenerateGlobalIds_Init(csi);
  vtkPVGhostCellsGenerator_Init(csi);
  vtkPVProbeLineFilter_Init(csi);
}
