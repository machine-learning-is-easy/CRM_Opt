#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPTemporalRanges_Init(vtkClientServerInterpreter*);
extern void vtkSamplePlaneSource_Init(vtkClientServerInterpreter*);
extern void vtkSLACPlaneGlyphs_Init(vtkClientServerInterpreter*);
extern void vtkTemporalRanges_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkSLACFiltersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPTemporalRanges_Init(csi);
  vtkSamplePlaneSource_Init(csi);
  vtkSLACPlaneGlyphs_Init(csi);
  vtkTemporalRanges_Init(csi);
}
