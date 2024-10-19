#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkmConfigDataModel_Init(vtkClientServerInterpreter*);
extern void vtkmDataSet_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkAcceleratorsVTKmDataModelCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkmConfigDataModel_Init(csi);
  vtkmDataSet_Init(csi);
}
