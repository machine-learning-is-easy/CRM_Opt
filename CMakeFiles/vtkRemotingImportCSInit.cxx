#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkSIImporterProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMImporterProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMImporterFactory_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRemotingImportCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkSIImporterProxy_Init(csi);
  vtkSMImporterProxy_Init(csi);
  vtkSMImporterFactory_Init(csi);
}
