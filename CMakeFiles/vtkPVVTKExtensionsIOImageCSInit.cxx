#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkImageFileSeriesReader_Init(vtkClientServerInterpreter*);
extern void vtkRawImageFileSeriesReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsIOImageCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkImageFileSeriesReader_Init(csi);
  vtkRawImageFileSeriesReader_Init(csi);
}
