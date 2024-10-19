#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtk3DS_Init(vtkClientServerInterpreter*);
extern void vtk3DSImporter_Init(vtkClientServerInterpreter*);
extern void vtkGLTFImporter_Init(vtkClientServerInterpreter*);
extern void vtkImporter_Init(vtkClientServerInterpreter*);
extern void vtkVRMLImporter_Init(vtkClientServerInterpreter*);
extern void vtkOBJImporter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOImportCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtk3DS_Init(csi);
  vtk3DSImporter_Init(csi);
  vtkGLTFImporter_Init(csi);
  vtkImporter_Init(csi);
  vtkVRMLImporter_Init(csi);
  vtkOBJImporter_Init(csi);
}
