#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkMemberFunctionCommand_Init(vtkClientServerInterpreter*);
extern void vtkCLIOptions_Init(vtkClientServerInterpreter*);
extern void vtkCommunicationErrorCatcher_Init(vtkClientServerInterpreter*);
extern void vtkDistributedTrivialProducer_Init(vtkClientServerInterpreter*);
extern void vtkEmulatedTimeAlgorithm_Init(vtkClientServerInterpreter*);
extern void vtkFileSequenceParser_Init(vtkClientServerInterpreter*);
extern void vtkLogRecorder_Init(vtkClientServerInterpreter*);
extern void vtkMultiProcessControllerHelper_Init(vtkClientServerInterpreter*);
extern void vtkPVCompositeDataPipeline_Init(vtkClientServerInterpreter*);
extern void vtkPVDataUtilities_Init(vtkClientServerInterpreter*);
extern void vtkPVInformationKeys_Init(vtkClientServerInterpreter*);
extern void vtkPVLogger_Init(vtkClientServerInterpreter*);
extern void vtkPVNullSource_Init(vtkClientServerInterpreter*);
extern void vtkPVPostFilter_Init(vtkClientServerInterpreter*);
extern void vtkPVPostFilterExecutive_Init(vtkClientServerInterpreter*);
extern void vtkPVTestUtilities_Init(vtkClientServerInterpreter*);
extern void vtkPVTrivialProducer_Init(vtkClientServerInterpreter*);
extern void vtkPVXMLElement_Init(vtkClientServerInterpreter*);
extern void vtkPVXMLParser_Init(vtkClientServerInterpreter*);
extern void vtkStringList_Init(vtkClientServerInterpreter*);
extern void vtkUndoElement_Init(vtkClientServerInterpreter*);
extern void vtkUndoSet_Init(vtkClientServerInterpreter*);
extern void vtkUndoStack_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsCoreCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMemberFunctionCommand_Init(csi);
  vtkCLIOptions_Init(csi);
  vtkCommunicationErrorCatcher_Init(csi);
  vtkDistributedTrivialProducer_Init(csi);
  vtkEmulatedTimeAlgorithm_Init(csi);
  vtkFileSequenceParser_Init(csi);
  vtkLogRecorder_Init(csi);
  vtkMultiProcessControllerHelper_Init(csi);
  vtkPVCompositeDataPipeline_Init(csi);
  vtkPVDataUtilities_Init(csi);
  vtkPVInformationKeys_Init(csi);
  vtkPVLogger_Init(csi);
  vtkPVNullSource_Init(csi);
  vtkPVPostFilter_Init(csi);
  vtkPVPostFilterExecutive_Init(csi);
  vtkPVTestUtilities_Init(csi);
  vtkPVTrivialProducer_Init(csi);
  vtkPVXMLElement_Init(csi);
  vtkPVXMLParser_Init(csi);
  vtkStringList_Init(csi);
  vtkUndoElement_Init(csi);
  vtkUndoSet_Init(csi);
  vtkUndoStack_Init(csi);
}
