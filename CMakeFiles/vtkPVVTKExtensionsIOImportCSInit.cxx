#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkMetaImporter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsIOImportCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMetaImporter_Init(csi);
}
