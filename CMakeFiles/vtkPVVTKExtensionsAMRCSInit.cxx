#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAMRConnectivity_Init(vtkClientServerInterpreter*);
extern void vtkAMRDualClip_Init(vtkClientServerInterpreter*);
extern void vtkAMRDualContour_Init(vtkClientServerInterpreter*);
extern void vtkAMRDualGridHelper_Init(vtkClientServerInterpreter*);
extern void vtkAMRFragmentIntegration_Init(vtkClientServerInterpreter*);
extern void vtkAMRFragmentsFilter_Init(vtkClientServerInterpreter*);
extern void vtkPVAMRDualClip_Init(vtkClientServerInterpreter*);
extern void vtkPVAMRDualContour_Init(vtkClientServerInterpreter*);
extern void vtkPVAMRFragmentIntegration_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsAMRCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAMRConnectivity_Init(csi);
  vtkAMRDualClip_Init(csi);
  vtkAMRDualContour_Init(csi);
  vtkAMRDualGridHelper_Init(csi);
  vtkAMRFragmentIntegration_Init(csi);
  vtkAMRFragmentsFilter_Init(csi);
  vtkPVAMRDualClip_Init(csi);
  vtkPVAMRDualContour_Init(csi);
  vtkPVAMRFragmentIntegration_Init(csi);
}
