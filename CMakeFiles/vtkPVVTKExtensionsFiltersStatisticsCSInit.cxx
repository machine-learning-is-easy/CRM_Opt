#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPSciVizContingencyStats_Init(vtkClientServerInterpreter*);
extern void vtkPSciVizDescriptiveStats_Init(vtkClientServerInterpreter*);
extern void vtkPSciVizKMeans_Init(vtkClientServerInterpreter*);
extern void vtkPSciVizMultiCorrelativeStats_Init(vtkClientServerInterpreter*);
extern void vtkPSciVizPCAStats_Init(vtkClientServerInterpreter*);
extern void vtkSciVizStatistics_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsFiltersStatisticsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPSciVizContingencyStats_Init(csi);
  vtkPSciVizDescriptiveStats_Init(csi);
  vtkPSciVizKMeans_Init(csi);
  vtkPSciVizMultiCorrelativeStats_Init(csi);
  vtkPSciVizPCAStats_Init(csi);
  vtkSciVizStatistics_Init(csi);
}
