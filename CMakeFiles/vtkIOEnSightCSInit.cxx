#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkEnSight6BinaryReader_Init(vtkClientServerInterpreter*);
extern void vtkEnSight6Reader_Init(vtkClientServerInterpreter*);
extern void vtkEnSightGoldBinaryReader_Init(vtkClientServerInterpreter*);
extern void vtkEnSightGoldCombinedReader_Init(vtkClientServerInterpreter*);
extern void vtkEnSightGoldReader_Init(vtkClientServerInterpreter*);
extern void vtkEnSightMasterServerReader_Init(vtkClientServerInterpreter*);
extern void vtkEnSightReader_Init(vtkClientServerInterpreter*);
extern void vtkEnSightSOSGoldReader_Init(vtkClientServerInterpreter*);
extern void vtkGenericEnSightReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOEnSightCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkEnSight6BinaryReader_Init(csi);
  vtkEnSight6Reader_Init(csi);
  vtkEnSightGoldBinaryReader_Init(csi);
  vtkEnSightGoldCombinedReader_Init(csi);
  vtkEnSightGoldReader_Init(csi);
  vtkEnSightMasterServerReader_Init(csi);
  vtkEnSightReader_Init(csi);
  vtkEnSightSOSGoldReader_Init(csi);
  vtkGenericEnSightReader_Init(csi);
}
