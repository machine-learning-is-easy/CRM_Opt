#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkBoundedPlaneSource_Init(vtkClientServerInterpreter*);
extern void vtkBoundedVolumeSource_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsPointsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBoundedPlaneSource_Init(csi);
  vtkBoundedVolumeSource_Init(csi);
}
