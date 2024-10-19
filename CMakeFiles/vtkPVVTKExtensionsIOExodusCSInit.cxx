#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkExodusFileSeriesReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsIOExodusCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkExodusFileSeriesReader_Init(csi);
}
