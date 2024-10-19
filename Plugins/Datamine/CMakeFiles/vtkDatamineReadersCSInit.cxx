#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkDataMineBlockReader_Init(vtkClientServerInterpreter*);
extern void vtkDataMineDrillHoleReader_Init(vtkClientServerInterpreter*);
extern void vtkDataMineDummyReader_Init(vtkClientServerInterpreter*);
extern void vtkDataMinePerimeterReader_Init(vtkClientServerInterpreter*);
extern void vtkDataMinePointReader_Init(vtkClientServerInterpreter*);
extern void vtkDataMineReader_Init(vtkClientServerInterpreter*);
extern void vtkDataMineWireFrameReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkDatamineReadersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkDataMineBlockReader_Init(csi);
  vtkDataMineDrillHoleReader_Init(csi);
  vtkDataMineDummyReader_Init(csi);
  vtkDataMinePerimeterReader_Init(csi);
  vtkDataMinePointReader_Init(csi);
  vtkDataMineReader_Init(csi);
  vtkDataMineWireFrameReader_Init(csi);
}
