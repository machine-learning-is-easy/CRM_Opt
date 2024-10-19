#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPrismSESAMEFileSeriesReader_Init(vtkClientServerInterpreter*);
extern void vtkPrismSESAMEReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPrismReadersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPrismSESAMEFileSeriesReader_Init(csi);
  vtkPrismSESAMEReader_Init(csi);
}
