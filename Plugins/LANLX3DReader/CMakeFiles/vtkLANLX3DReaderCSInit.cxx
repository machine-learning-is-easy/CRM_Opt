#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkLANLX3DReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkLANLX3DReaderCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkLANLX3DReader_Init(csi);
}
