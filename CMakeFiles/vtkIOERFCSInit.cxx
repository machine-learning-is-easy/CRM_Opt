#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkHDF5Helper_Init(vtkClientServerInterpreter*);
extern void vtkERFReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOERFCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkHDF5Helper_Init(csi);
  vtkERFReader_Init(csi);
}
