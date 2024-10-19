#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkMomentGlyphs_Init(vtkClientServerInterpreter*);
extern void vtkMomentVectors_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkMomentFiltersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMomentGlyphs_Init(csi);
  vtkMomentVectors_Init(csi);
}
