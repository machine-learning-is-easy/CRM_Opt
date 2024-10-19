#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAMRFileSeriesReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsIOAMRCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAMRFileSeriesReader_Init(csi);
}
