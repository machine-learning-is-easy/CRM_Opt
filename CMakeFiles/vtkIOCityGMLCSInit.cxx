#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCityGMLReader_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkIOCityGMLCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCityGMLReader_Init(csi);
}
