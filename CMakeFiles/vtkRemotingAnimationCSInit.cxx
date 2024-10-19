#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAnimationPlayer_Init(vtkClientServerInterpreter*);
extern void vtkCameraInterpolator2_Init(vtkClientServerInterpreter*);
extern void vtkCompositeAnimationPlayer_Init(vtkClientServerInterpreter*);
extern void vtkPVAnimationCue_Init(vtkClientServerInterpreter*);
extern void vtkPVBooleanKeyFrame_Init(vtkClientServerInterpreter*);
extern void vtkPVCameraAnimationCue_Init(vtkClientServerInterpreter*);
extern void vtkPVCameraCueManipulator_Init(vtkClientServerInterpreter*);
extern void vtkPVCameraKeyFrame_Init(vtkClientServerInterpreter*);
extern void vtkPVCompositeKeyFrame_Init(vtkClientServerInterpreter*);
extern void vtkPVCueManipulator_Init(vtkClientServerInterpreter*);
extern void vtkPVExponentialKeyFrame_Init(vtkClientServerInterpreter*);
extern void vtkPVKeyFrame_Init(vtkClientServerInterpreter*);
extern void vtkPVKeyFrameAnimationCue_Init(vtkClientServerInterpreter*);
extern void vtkPVKeyFrameAnimationCueForProxies_Init(vtkClientServerInterpreter*);
extern void vtkPVKeyFrameCueManipulator_Init(vtkClientServerInterpreter*);
extern void vtkPVRampKeyFrame_Init(vtkClientServerInterpreter*);
extern void vtkPVRepresentationAnimationHelper_Init(vtkClientServerInterpreter*);
extern void vtkPVSinusoidKeyFrame_Init(vtkClientServerInterpreter*);
extern void vtkSIXMLAnimationWriterRepresentationProperty_Init(vtkClientServerInterpreter*);
extern void vtkSMAnimationFrameWindowDomain_Init(vtkClientServerInterpreter*);
extern void vtkSMAnimationScene_Init(vtkClientServerInterpreter*);
extern void vtkSMAnimationSceneGeometryWriter_Init(vtkClientServerInterpreter*);
extern void vtkSMAnimationSceneWebWriter_Init(vtkClientServerInterpreter*);
extern void vtkSMAnimationSceneProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMAnimationSceneWriter_Init(vtkClientServerInterpreter*);
extern void vtkSMSaveAnimationExtractsProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMSaveAnimationProxy_Init(vtkClientServerInterpreter*);
extern void vtkSequenceAnimationPlayer_Init(vtkClientServerInterpreter*);
extern void vtkTimestepsAnimationPlayer_Init(vtkClientServerInterpreter*);
extern void vtkXMLPVAnimationWriter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRemotingAnimationCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAnimationPlayer_Init(csi);
  vtkCameraInterpolator2_Init(csi);
  vtkCompositeAnimationPlayer_Init(csi);
  vtkPVAnimationCue_Init(csi);
  vtkPVBooleanKeyFrame_Init(csi);
  vtkPVCameraAnimationCue_Init(csi);
  vtkPVCameraCueManipulator_Init(csi);
  vtkPVCameraKeyFrame_Init(csi);
  vtkPVCompositeKeyFrame_Init(csi);
  vtkPVCueManipulator_Init(csi);
  vtkPVExponentialKeyFrame_Init(csi);
  vtkPVKeyFrame_Init(csi);
  vtkPVKeyFrameAnimationCue_Init(csi);
  vtkPVKeyFrameAnimationCueForProxies_Init(csi);
  vtkPVKeyFrameCueManipulator_Init(csi);
  vtkPVRampKeyFrame_Init(csi);
  vtkPVRepresentationAnimationHelper_Init(csi);
  vtkPVSinusoidKeyFrame_Init(csi);
  vtkSIXMLAnimationWriterRepresentationProperty_Init(csi);
  vtkSMAnimationFrameWindowDomain_Init(csi);
  vtkSMAnimationScene_Init(csi);
  vtkSMAnimationSceneGeometryWriter_Init(csi);
  vtkSMAnimationSceneWebWriter_Init(csi);
  vtkSMAnimationSceneProxy_Init(csi);
  vtkSMAnimationSceneWriter_Init(csi);
  vtkSMSaveAnimationExtractsProxy_Init(csi);
  vtkSMSaveAnimationProxy_Init(csi);
  vtkSequenceAnimationPlayer_Init(csi);
  vtkTimestepsAnimationPlayer_Init(csi);
  vtkXMLPVAnimationWriter_Init(csi);
}
