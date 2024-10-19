#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCameraManipulator_Init(vtkClientServerInterpreter*);
extern void vtkCameraManipulatorGUIHelper_Init(vtkClientServerInterpreter*);
extern void vtkPVInteractorStyle_Init(vtkClientServerInterpreter*);
extern void vtkPVJoystickFly_Init(vtkClientServerInterpreter*);
extern void vtkPVJoystickFlyIn_Init(vtkClientServerInterpreter*);
extern void vtkPVJoystickFlyOut_Init(vtkClientServerInterpreter*);
extern void vtkPVTrackballMoveActor_Init(vtkClientServerInterpreter*);
extern void vtkPVTrackballMultiRotate_Init(vtkClientServerInterpreter*);
extern void vtkPVTrackballPan_Init(vtkClientServerInterpreter*);
extern void vtkPVTrackballRoll_Init(vtkClientServerInterpreter*);
extern void vtkPVTrackballRotate_Init(vtkClientServerInterpreter*);
extern void vtkPVTrackballEnvironmentRotate_Init(vtkClientServerInterpreter*);
extern void vtkPVTrackballZoom_Init(vtkClientServerInterpreter*);
extern void vtkPVTrackballZoomToMouse_Init(vtkClientServerInterpreter*);
extern void vtkTrackballPan_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsInteractionStyleCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCameraManipulator_Init(csi);
  vtkCameraManipulatorGUIHelper_Init(csi);
  vtkPVInteractorStyle_Init(csi);
  vtkPVJoystickFly_Init(csi);
  vtkPVJoystickFlyIn_Init(csi);
  vtkPVJoystickFlyOut_Init(csi);
  vtkPVTrackballMoveActor_Init(csi);
  vtkPVTrackballMultiRotate_Init(csi);
  vtkPVTrackballPan_Init(csi);
  vtkPVTrackballRoll_Init(csi);
  vtkPVTrackballRotate_Init(csi);
  vtkPVTrackballEnvironmentRotate_Init(csi);
  vtkPVTrackballZoom_Init(csi);
  vtkPVTrackballZoomToMouse_Init(csi);
  vtkTrackballPan_Init(csi);
}
