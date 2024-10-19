#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCFSReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkCFSReaderCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCFSReader_Init(csi);
}
