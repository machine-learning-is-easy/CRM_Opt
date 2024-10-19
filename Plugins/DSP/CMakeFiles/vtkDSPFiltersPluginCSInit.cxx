#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAccousticUtilities_Init(vtkClientServerInterpreter*);
extern void vtkBandFiltering_Init(vtkClientServerInterpreter*);
extern void vtkDSPTableFFT_Init(vtkClientServerInterpreter*);
extern void vtkMeanPowerSpectralDensity_Init(vtkClientServerInterpreter*);
extern void vtkMergeReduceTables_Init(vtkClientServerInterpreter*);
extern void vtkMultiDimensionBrowser_Init(vtkClientServerInterpreter*);
extern void vtkProjectSpectrumMagnitude_Init(vtkClientServerInterpreter*);
extern void vtkSoundQuantitiesCalculator_Init(vtkClientServerInterpreter*);
extern void vtkSpectrogramFilter_Init(vtkClientServerInterpreter*);
extern void vtkTemporalMultiplexing_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkDSPFiltersPluginCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAccousticUtilities_Init(csi);
  vtkBandFiltering_Init(csi);
  vtkDSPTableFFT_Init(csi);
  vtkMeanPowerSpectralDensity_Init(csi);
  vtkMergeReduceTables_Init(csi);
  vtkMultiDimensionBrowser_Init(csi);
  vtkProjectSpectrumMagnitude_Init(csi);
  vtkSoundQuantitiesCalculator_Init(csi);
  vtkSpectrogramFilter_Init(csi);
  vtkTemporalMultiplexing_Init(csi);
}
