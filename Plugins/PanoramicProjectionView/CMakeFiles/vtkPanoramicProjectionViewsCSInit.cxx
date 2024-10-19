#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPVPanoramicProjectionView_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPanoramicProjectionViewsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPVPanoramicProjectionView_Init(csi);
}
