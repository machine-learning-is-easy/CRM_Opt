#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCPExodusIIElementBlock_Init(vtkClientServerInterpreter*);
extern void vtkCPExodusIIInSituReader_Init(vtkClientServerInterpreter*);
extern void vtkExodusIICache_Init(vtkClientServerInterpreter*);
extern void vtkExodusIIReader_Init(vtkClientServerInterpreter*);
extern void vtkExodusIIReaderParser_Init(vtkClientServerInterpreter*);
extern void vtkExodusIIWriter_Init(vtkClientServerInterpreter*);
extern void vtkModelMetadata_Init(vtkClientServerInterpreter*);
extern void vtkCPExodusIINodalCoordinatesTemplate_Init(vtkClientServerInterpreter*);
extern void vtkCPExodusIIResultsArrayTemplate_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOExodusCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCPExodusIIElementBlock_Init(csi);
  vtkCPExodusIIInSituReader_Init(csi);
  vtkExodusIICache_Init(csi);
  vtkExodusIIReader_Init(csi);
  vtkExodusIIReaderParser_Init(csi);
  vtkExodusIIWriter_Init(csi);
  vtkModelMetadata_Init(csi);
  vtkCPExodusIINodalCoordinatesTemplate_Init(csi);
  vtkCPExodusIIResultsArrayTemplate_Init(csi);
}
