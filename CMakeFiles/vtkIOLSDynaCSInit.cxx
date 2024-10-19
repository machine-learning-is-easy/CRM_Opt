#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void LSDynaFamily_Init(vtkClientServerInterpreter*);
extern void LSDynaMetaData_Init(vtkClientServerInterpreter*);
extern void vtkLSDynaReader_Init(vtkClientServerInterpreter*);
extern void vtkLSDynaSummaryParser_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOLSDynaCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  LSDynaFamily_Init(csi);
  LSDynaMetaData_Init(csi);
  vtkLSDynaReader_Init(csi);
  vtkLSDynaSummaryParser_Init(csi);
}
