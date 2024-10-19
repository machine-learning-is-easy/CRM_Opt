#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkGMVReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkGMVReaderCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkGMVReader_Init(csi);
}
