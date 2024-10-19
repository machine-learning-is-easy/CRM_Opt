#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkBoundaryMeshQuality_Init(vtkClientServerInterpreter*);
extern void vtkCellQuality_Init(vtkClientServerInterpreter*);
extern void vtkCellSizeFilter_Init(vtkClientServerInterpreter*);
extern void vtkMatrixMathFilter_Init(vtkClientServerInterpreter*);
extern void vtkMeshQuality_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersVerdictCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBoundaryMeshQuality_Init(csi);
  vtkCellQuality_Init(csi);
  vtkCellSizeFilter_Init(csi);
  vtkMatrixMathFilter_Init(csi);
  vtkMeshQuality_Init(csi);
}
