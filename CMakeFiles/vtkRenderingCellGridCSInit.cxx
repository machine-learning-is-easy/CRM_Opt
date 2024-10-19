#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkDGRenderResponder_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLCellGridMapper_Init(vtkClientServerInterpreter*);
extern void vtkRenderingCellGrid_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingCellGridCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkDGRenderResponder_Init(csi);
  vtkOpenGLCellGridMapper_Init(csi);
  vtkRenderingCellGrid_Init(csi);
}
