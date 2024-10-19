#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkUnstructuredGridGhostCellsGenerator_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT LegacyGhostCellsGeneratorFiltersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkUnstructuredGridGhostCellsGenerator_Init(csi);
}
