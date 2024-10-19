#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAMRVolumeMapper_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRenderingVolumeAMRCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAMRVolumeMapper_Init(csi);
}
