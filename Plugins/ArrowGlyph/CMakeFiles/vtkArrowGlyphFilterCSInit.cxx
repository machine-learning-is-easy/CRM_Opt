#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkArrowGlyphFilter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkArrowGlyphFilterCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkArrowGlyphFilter_Init(csi);
}
