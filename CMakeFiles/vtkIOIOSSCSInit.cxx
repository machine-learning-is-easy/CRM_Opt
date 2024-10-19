#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkIOSSReader_Init(vtkClientServerInterpreter*);
extern void vtkIOSSCellGridReader_Init(vtkClientServerInterpreter*);
extern void vtkIOSSWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOIOSSCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkIOSSReader_Init(csi);
  vtkIOSSCellGridReader_Init(csi);
  vtkIOSSWriter_Init(csi);
}
