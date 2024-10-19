#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkGeoProjection_Init(vtkClientServerInterpreter*);
extern void vtkGeoTransform_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkGeovisCoreCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkGeoProjection_Init(csi);
  vtkGeoTransform_Init(csi);
}
