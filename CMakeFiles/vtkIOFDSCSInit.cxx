#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkFDSReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOFDSCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkFDSReader_Init(csi);
}
