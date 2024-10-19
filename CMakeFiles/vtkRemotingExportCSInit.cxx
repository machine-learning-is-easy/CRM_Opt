#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPVGL2PSExporter_Init(vtkClientServerInterpreter*);
extern void vtkPVWebExporter_Init(vtkClientServerInterpreter*);
extern void vtkPVX3DExporter_Init(vtkClientServerInterpreter*);
extern void vtkSMCSVExporterProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMCSVProxiesInitializationHelper_Init(vtkClientServerInterpreter*);
extern void vtkSMExporterProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMGL2PSExporterProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMRenderViewExporterProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMViewExportHelper_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRemotingExportCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPVGL2PSExporter_Init(csi);
  vtkPVWebExporter_Init(csi);
  vtkPVX3DExporter_Init(csi);
  vtkSMCSVExporterProxy_Init(csi);
  vtkSMCSVProxiesInitializationHelper_Init(csi);
  vtkSMExporterProxy_Init(csi);
  vtkSMGL2PSExporterProxy_Init(csi);
  vtkSMRenderViewExporterProxy_Init(csi);
  vtkSMViewExportHelper_Init(csi);
}
