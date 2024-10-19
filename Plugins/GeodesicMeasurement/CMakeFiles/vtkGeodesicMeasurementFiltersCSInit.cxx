#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkFastMarchingGeodesicDistance_Init(vtkClientServerInterpreter*);
extern void vtkFastMarchingGeodesicPath_Init(vtkClientServerInterpreter*);
extern void vtkGeodesicsBetweenPoints_Init(vtkClientServerInterpreter*);
extern void vtkPolyDataGeodesicDistance_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkGeodesicMeasurementFiltersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkFastMarchingGeodesicDistance_Init(csi);
  vtkFastMarchingGeodesicPath_Init(csi);
  vtkGeodesicsBetweenPoints_Init(csi);
  vtkPolyDataGeodesicDistance_Init(csi);
}
