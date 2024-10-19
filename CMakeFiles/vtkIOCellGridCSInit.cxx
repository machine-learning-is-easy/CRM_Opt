#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkIOCellGrid_Init(vtkClientServerInterpreter*);
extern void vtkCellGridIOQuery_Init(vtkClientServerInterpreter*);
extern void vtkCellGridReader_Init(vtkClientServerInterpreter*);
extern void vtkCellGridWriter_Init(vtkClientServerInterpreter*);
extern void vtkCompositeCellGridReader_Init(vtkClientServerInterpreter*);
extern void vtkDGIOResponder_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOCellGridCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkIOCellGrid_Init(csi);
  vtkCellGridIOQuery_Init(csi);
  vtkCellGridReader_Init(csi);
  vtkCellGridWriter_Init(csi);
  vtkCompositeCellGridReader_Init(csi);
  vtkDGIOResponder_Init(csi);
}
