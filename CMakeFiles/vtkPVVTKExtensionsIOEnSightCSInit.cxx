#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPEnSightGoldBinaryReader_Init(vtkClientServerInterpreter*);
extern void vtkPEnSightGoldReader_Init(vtkClientServerInterpreter*);
extern void vtkPEnSightReader_Init(vtkClientServerInterpreter*);
extern void vtkPGenericEnSightReader_Init(vtkClientServerInterpreter*);
extern void vtkPVEnSightMasterServerReader_Init(vtkClientServerInterpreter*);
extern void vtkPVEnSightMasterServerReader2_Init(vtkClientServerInterpreter*);
extern void vtkPVEnSightMasterServerTranslator_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsIOEnSightCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPEnSightGoldBinaryReader_Init(csi);
  vtkPEnSightGoldReader_Init(csi);
  vtkPEnSightReader_Init(csi);
  vtkPGenericEnSightReader_Init(csi);
  vtkPVEnSightMasterServerReader_Init(csi);
  vtkPVEnSightMasterServerReader2_Init(csi);
  vtkPVEnSightMasterServerTranslator_Init(csi);
}
