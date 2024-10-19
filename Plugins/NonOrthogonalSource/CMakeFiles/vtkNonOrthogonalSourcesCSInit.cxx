#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkShearedWaveletSource_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkNonOrthogonalSourcesCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkShearedWaveletSource_Init(csi);
}
