#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void H5RageAdaptor_Init(vtkClientServerInterpreter*);
extern void vtkH5RageReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOH5RageCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  H5RageAdaptor_Init(csi);
  vtkH5RageReader_Init(csi);
}
