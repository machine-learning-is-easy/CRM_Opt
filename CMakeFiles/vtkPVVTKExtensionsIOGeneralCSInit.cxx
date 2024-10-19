#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkEnsembleDataReader_Init(vtkClientServerInterpreter*);
extern void vtkNastranBDFReader_Init(vtkClientServerInterpreter*);
extern void vtkPhastaReader_Init(vtkClientServerInterpreter*);
extern void vtkPPhastaReader_Init(vtkClientServerInterpreter*);
extern void vtkPVPLYWriter_Init(vtkClientServerInterpreter*);
extern void vtkUnstructuredPOPReader_Init(vtkClientServerInterpreter*);
extern void vtkVRMLSource_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsIOGeneralCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkEnsembleDataReader_Init(csi);
  vtkNastranBDFReader_Init(csi);
  vtkPhastaReader_Init(csi);
  vtkPPhastaReader_Init(csi);
  vtkPVPLYWriter_Init(csi);
  vtkUnstructuredPOPReader_Init(csi);
  vtkVRMLSource_Init(csi);
}
