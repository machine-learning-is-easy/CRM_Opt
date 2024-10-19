#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPVEnsembleDataReaderInformation_Init(vtkClientServerInterpreter*);
extern void vtkPVMultiServerDataSource_Init(vtkClientServerInterpreter*);
extern void vtkSMCameraConfigurationReader_Init(vtkClientServerInterpreter*);
extern void vtkSMCameraConfigurationWriter_Init(vtkClientServerInterpreter*);
extern void vtkSMEnsembleDataReaderProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMExtractSelectionProxyInitializationHelper_Init(vtkClientServerInterpreter*);
extern void vtkSMInteractionUndoStackBuilder_Init(vtkClientServerInterpreter*);
extern void vtkSMInteractiveSelectionPipeline_Init(vtkClientServerInterpreter*);
extern void vtkSMMultiServerSourceProxy_Init(vtkClientServerInterpreter*);
extern void vtkSMOMETIFFChannelCalculatorInitializationHelper_Init(vtkClientServerInterpreter*);
extern void vtkSMPLYWriterProxyInitializationHelper_Init(vtkClientServerInterpreter*);
extern void vtkSMPreselectionPipeline_Init(vtkClientServerInterpreter*);
extern void vtkSMProxyClipboard_Init(vtkClientServerInterpreter*);
extern void vtkSMProxyConfigurationReader_Init(vtkClientServerInterpreter*);
extern void vtkSMProxyConfigurationWriter_Init(vtkClientServerInterpreter*);
extern void vtkSMTesting_Init(vtkClientServerInterpreter*);
extern void vtkSMTooltipSelectionPipeline_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkRemotingMiscCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPVEnsembleDataReaderInformation_Init(csi);
  vtkPVMultiServerDataSource_Init(csi);
  vtkSMCameraConfigurationReader_Init(csi);
  vtkSMCameraConfigurationWriter_Init(csi);
  vtkSMEnsembleDataReaderProxy_Init(csi);
  vtkSMExtractSelectionProxyInitializationHelper_Init(csi);
  vtkSMInteractionUndoStackBuilder_Init(csi);
  vtkSMInteractiveSelectionPipeline_Init(csi);
  vtkSMMultiServerSourceProxy_Init(csi);
  vtkSMOMETIFFChannelCalculatorInitializationHelper_Init(csi);
  vtkSMPLYWriterProxyInitializationHelper_Init(csi);
  vtkSMPreselectionPipeline_Init(csi);
  vtkSMProxyClipboard_Init(csi);
  vtkSMProxyConfigurationReader_Init(csi);
  vtkSMProxyConfigurationWriter_Init(csi);
  vtkSMTesting_Init(csi);
  vtkSMTooltipSelectionPipeline_Init(csi);
}
