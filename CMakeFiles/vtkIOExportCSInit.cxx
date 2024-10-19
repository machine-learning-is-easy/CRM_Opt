#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkExporter_Init(vtkClientServerInterpreter*);
extern void vtkGLTFExporter_Init(vtkClientServerInterpreter*);
extern void vtkIVExporter_Init(vtkClientServerInterpreter*);
extern void vtkJSONDataSetWriter_Init(vtkClientServerInterpreter*);
extern void vtkJSONRenderWindowExporter_Init(vtkClientServerInterpreter*);
extern void vtkJSONSceneExporter_Init(vtkClientServerInterpreter*);
extern void vtkOBJExporter_Init(vtkClientServerInterpreter*);
extern void vtkOOGLExporter_Init(vtkClientServerInterpreter*);
extern void vtkPOVExporter_Init(vtkClientServerInterpreter*);
extern void vtkRIBExporter_Init(vtkClientServerInterpreter*);
extern void vtkRIBLight_Init(vtkClientServerInterpreter*);
extern void vtkRIBProperty_Init(vtkClientServerInterpreter*);
extern void vtkSVGContextDevice2D_Init(vtkClientServerInterpreter*);
extern void vtkSVGExporter_Init(vtkClientServerInterpreter*);
extern void vtkSingleVTPExporter_Init(vtkClientServerInterpreter*);
extern void vtkVRMLExporter_Init(vtkClientServerInterpreter*);
extern void vtkX3D_Init(vtkClientServerInterpreter*);
extern void vtkX3DExporter_Init(vtkClientServerInterpreter*);
extern void vtkX3DExporterFIWriter_Init(vtkClientServerInterpreter*);
extern void vtkX3DExporterWriter_Init(vtkClientServerInterpreter*);
extern void vtkX3DExporterXMLWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOExportCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkExporter_Init(csi);
  vtkGLTFExporter_Init(csi);
  vtkIVExporter_Init(csi);
  vtkJSONDataSetWriter_Init(csi);
  vtkJSONRenderWindowExporter_Init(csi);
  vtkJSONSceneExporter_Init(csi);
  vtkOBJExporter_Init(csi);
  vtkOOGLExporter_Init(csi);
  vtkPOVExporter_Init(csi);
  vtkRIBExporter_Init(csi);
  vtkRIBLight_Init(csi);
  vtkRIBProperty_Init(csi);
  vtkSVGContextDevice2D_Init(csi);
  vtkSVGExporter_Init(csi);
  vtkSingleVTPExporter_Init(csi);
  vtkVRMLExporter_Init(csi);
  vtkX3D_Init(csi);
  vtkX3DExporter_Init(csi);
  vtkX3DExporterFIWriter_Init(csi);
  vtkX3DExporterWriter_Init(csi);
  vtkX3DExporterXMLWriter_Init(csi);
}
