#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPVGeneralSettings_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRemotingSettingsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPVGeneralSettings_Init(csi);
}
