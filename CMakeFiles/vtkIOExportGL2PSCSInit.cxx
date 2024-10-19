#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkGL2PSExporter_Init(vtkClientServerInterpreter*);
extern void vtkOpenGLGL2PSExporter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOExportGL2PSCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkGL2PSExporter_Init(csi);
  vtkOpenGLGL2PSExporter_Init(csi);
}
