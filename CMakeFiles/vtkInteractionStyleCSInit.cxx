#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkInteractorStyleDrawPolygon_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleFlight_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleImage_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleJoystickActor_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleJoystickCamera_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleMultiTouchCamera_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleRubberBand2D_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleRubberBand3D_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleRubberBandPick_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleRubberBandZoom_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleTerrain_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleTrackball_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleTrackballActor_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleTrackballCamera_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleUnicam_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleUser_Init(vtkClientServerInterpreter*);
extern void vtkInteractorStyleSwitch_Init(vtkClientServerInterpreter*);
extern void vtkParallelCoordinatesInteractorStyle_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkInteractionStyleCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkInteractorStyleDrawPolygon_Init(csi);
  vtkInteractorStyleFlight_Init(csi);
  vtkInteractorStyleImage_Init(csi);
  vtkInteractorStyleJoystickActor_Init(csi);
  vtkInteractorStyleJoystickCamera_Init(csi);
  vtkInteractorStyleMultiTouchCamera_Init(csi);
  vtkInteractorStyleRubberBand2D_Init(csi);
  vtkInteractorStyleRubberBand3D_Init(csi);
  vtkInteractorStyleRubberBandPick_Init(csi);
  vtkInteractorStyleRubberBandZoom_Init(csi);
  vtkInteractorStyleTerrain_Init(csi);
  vtkInteractorStyleTrackball_Init(csi);
  vtkInteractorStyleTrackballActor_Init(csi);
  vtkInteractorStyleTrackballCamera_Init(csi);
  vtkInteractorStyleUnicam_Init(csi);
  vtkInteractorStyleUser_Init(csi);
  vtkInteractorStyleSwitch_Init(csi);
  vtkParallelCoordinatesInteractorStyle_Init(csi);
}
