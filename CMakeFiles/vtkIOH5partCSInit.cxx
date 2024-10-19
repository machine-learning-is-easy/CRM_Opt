#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkH5PartReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOH5partCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkH5PartReader_Init(csi);
}
