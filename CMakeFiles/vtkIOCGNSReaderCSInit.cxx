#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCGNSFileSeriesReader_Init(vtkClientServerInterpreter*);
extern void vtkCGNSReader_Init(vtkClientServerInterpreter*);
extern void vtkCONVERGECFDCGNSReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOCGNSReaderCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCGNSFileSeriesReader_Init(csi);
  vtkCGNSReader_Init(csi);
  vtkCONVERGECFDCGNSReader_Init(csi);
}
