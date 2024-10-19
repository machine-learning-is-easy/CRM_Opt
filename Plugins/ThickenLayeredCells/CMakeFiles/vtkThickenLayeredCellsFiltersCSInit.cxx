#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkThickenLayeredCells_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkThickenLayeredCellsFiltersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkThickenLayeredCells_Init(csi);
}
