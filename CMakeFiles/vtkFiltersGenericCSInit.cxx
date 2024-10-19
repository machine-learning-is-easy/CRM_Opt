#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkGenericClip_Init(vtkClientServerInterpreter*);
extern void vtkGenericContourFilter_Init(vtkClientServerInterpreter*);
extern void vtkGenericCutter_Init(vtkClientServerInterpreter*);
extern void vtkGenericDataSetTessellator_Init(vtkClientServerInterpreter*);
extern void vtkGenericGeometryFilter_Init(vtkClientServerInterpreter*);
extern void vtkGenericGlyph3DFilter_Init(vtkClientServerInterpreter*);
extern void vtkGenericOutlineFilter_Init(vtkClientServerInterpreter*);
extern void vtkGenericProbeFilter_Init(vtkClientServerInterpreter*);
extern void vtkGenericStreamTracer_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersGenericCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkGenericClip_Init(csi);
  vtkGenericContourFilter_Init(csi);
  vtkGenericCutter_Init(csi);
  vtkGenericDataSetTessellator_Init(csi);
  vtkGenericGeometryFilter_Init(csi);
  vtkGenericGlyph3DFilter_Init(csi);
  vtkGenericOutlineFilter_Init(csi);
  vtkGenericProbeFilter_Init(csi);
  vtkGenericStreamTracer_Init(csi);
}
