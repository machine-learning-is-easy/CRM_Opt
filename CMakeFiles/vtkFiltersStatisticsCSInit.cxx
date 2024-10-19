#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAutoCorrelativeStatistics_Init(vtkClientServerInterpreter*);
extern void vtkBivariateLinearTableThreshold_Init(vtkClientServerInterpreter*);
extern void vtkComputeQuantiles_Init(vtkClientServerInterpreter*);
extern void vtkComputeQuartiles_Init(vtkClientServerInterpreter*);
extern void vtkContingencyStatistics_Init(vtkClientServerInterpreter*);
extern void vtkCorrelativeStatistics_Init(vtkClientServerInterpreter*);
extern void vtkDescriptiveStatistics_Init(vtkClientServerInterpreter*);
extern void vtkExtractFunctionalBagPlot_Init(vtkClientServerInterpreter*);
extern void vtkExtractHistogram_Init(vtkClientServerInterpreter*);
extern void vtkHighestDensityRegionsStatistics_Init(vtkClientServerInterpreter*);
extern void vtkKMeansDistanceFunctor_Init(vtkClientServerInterpreter*);
extern void vtkKMeansDistanceFunctorCalculator_Init(vtkClientServerInterpreter*);
extern void vtkKMeansStatistics_Init(vtkClientServerInterpreter*);
extern void vtkLengthDistribution_Init(vtkClientServerInterpreter*);
extern void vtkMultiCorrelativeStatistics_Init(vtkClientServerInterpreter*);
extern void vtkOrderStatistics_Init(vtkClientServerInterpreter*);
extern void vtkPCAStatistics_Init(vtkClientServerInterpreter*);
extern void vtkStatisticsAlgorithm_Init(vtkClientServerInterpreter*);
extern void vtkStrahlerMetric_Init(vtkClientServerInterpreter*);
extern void vtkStreamingStatistics_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersStatisticsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAutoCorrelativeStatistics_Init(csi);
  vtkBivariateLinearTableThreshold_Init(csi);
  vtkComputeQuantiles_Init(csi);
  vtkComputeQuartiles_Init(csi);
  vtkContingencyStatistics_Init(csi);
  vtkCorrelativeStatistics_Init(csi);
  vtkDescriptiveStatistics_Init(csi);
  vtkExtractFunctionalBagPlot_Init(csi);
  vtkExtractHistogram_Init(csi);
  vtkHighestDensityRegionsStatistics_Init(csi);
  vtkKMeansDistanceFunctor_Init(csi);
  vtkKMeansDistanceFunctorCalculator_Init(csi);
  vtkKMeansStatistics_Init(csi);
  vtkLengthDistribution_Init(csi);
  vtkMultiCorrelativeStatistics_Init(csi);
  vtkOrderStatistics_Init(csi);
  vtkPCAStatistics_Init(csi);
  vtkStatisticsAlgorithm_Init(csi);
  vtkStrahlerMetric_Init(csi);
  vtkStreamingStatistics_Init(csi);
}
