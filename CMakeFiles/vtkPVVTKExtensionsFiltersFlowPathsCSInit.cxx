#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkLegacyStreaklineFilter_Init(vtkClientServerInterpreter*);
extern void vtkLegacyParticlePathFilter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsFiltersFlowPathsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkLegacyStreaklineFilter_Init(csi);
  vtkLegacyParticlePathFilter_Init(csi);
}
