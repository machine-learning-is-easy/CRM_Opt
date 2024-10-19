#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPAutoCorrelativeStatistics_Init(vtkClientServerInterpreter*);
extern void vtkPBivariateLinearTableThreshold_Init(vtkClientServerInterpreter*);
extern void vtkPComputeQuantiles_Init(vtkClientServerInterpreter*);
extern void vtkPComputeQuartiles_Init(vtkClientServerInterpreter*);
extern void vtkPContingencyStatistics_Init(vtkClientServerInterpreter*);
extern void vtkPCorrelativeStatistics_Init(vtkClientServerInterpreter*);
extern void vtkPDescriptiveStatistics_Init(vtkClientServerInterpreter*);
extern void vtkPKMeansStatistics_Init(vtkClientServerInterpreter*);
extern void vtkPMultiCorrelativeStatistics_Init(vtkClientServerInterpreter*);
extern void vtkPOrderStatistics_Init(vtkClientServerInterpreter*);
extern void vtkPPCAStatistics_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersParallelStatisticsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPAutoCorrelativeStatistics_Init(csi);
  vtkPBivariateLinearTableThreshold_Init(csi);
  vtkPComputeQuantiles_Init(csi);
  vtkPComputeQuartiles_Init(csi);
  vtkPContingencyStatistics_Init(csi);
  vtkPCorrelativeStatistics_Init(csi);
  vtkPDescriptiveStatistics_Init(csi);
  vtkPKMeansStatistics_Init(csi);
  vtkPMultiCorrelativeStatistics_Init(csi);
  vtkPOrderStatistics_Init(csi);
  vtkPPCAStatistics_Init(csi);
}
