#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAbstractChartExporter_Init(vtkClientServerInterpreter*);
extern void vtkAllToNRedistributeCompositePolyData_Init(vtkClientServerInterpreter*);
extern void vtkAllToNRedistributePolyData_Init(vtkClientServerInterpreter*);
extern void vtkBalancedRedistributePolyData_Init(vtkClientServerInterpreter*);
extern void vtkBlockDeliveryPreprocessor_Init(vtkClientServerInterpreter*);
extern void vtkClientServerMoveData_Init(vtkClientServerInterpreter*);
extern void vtkCSVExporter_Init(vtkClientServerInterpreter*);
extern void vtkDataTabulator_Init(vtkClientServerInterpreter*);
extern void vtkImageCompressor_Init(vtkClientServerInterpreter*);
extern void vtkImageTransparencyFilter_Init(vtkClientServerInterpreter*);
extern void vtkLZ4Compressor_Init(vtkClientServerInterpreter*);
extern void vtkMarkSelectedRows_Init(vtkClientServerInterpreter*);
extern void vtkMPIMoveData_Init(vtkClientServerInterpreter*);
extern void vtkNetworkImageSource_Init(vtkClientServerInterpreter*);
extern void vtkOrderedCompositeDistributor_Init(vtkClientServerInterpreter*);
extern void vtkPlotlyJsonExporter_Init(vtkClientServerInterpreter*);
extern void vtkPVGeometryFilter_Init(vtkClientServerInterpreter*);
extern void vtkRedistributePolyData_Init(vtkClientServerInterpreter*);
extern void vtkResampledAMRImageSource_Init(vtkClientServerInterpreter*);
extern void vtkSelectionDeliveryFilter_Init(vtkClientServerInterpreter*);
extern void vtkSortedTableStreamer_Init(vtkClientServerInterpreter*);
extern void vtkSquirtCompressor_Init(vtkClientServerInterpreter*);
extern void vtkVolumeRepresentationPreprocessor_Init(vtkClientServerInterpreter*);
extern void vtkWeightedRedistributePolyData_Init(vtkClientServerInterpreter*);
extern void vtkZlibImageCompressor_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkPVVTKExtensionsFiltersRenderingCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAbstractChartExporter_Init(csi);
  vtkAllToNRedistributeCompositePolyData_Init(csi);
  vtkAllToNRedistributePolyData_Init(csi);
  vtkBalancedRedistributePolyData_Init(csi);
  vtkBlockDeliveryPreprocessor_Init(csi);
  vtkClientServerMoveData_Init(csi);
  vtkCSVExporter_Init(csi);
  vtkDataTabulator_Init(csi);
  vtkImageCompressor_Init(csi);
  vtkImageTransparencyFilter_Init(csi);
  vtkLZ4Compressor_Init(csi);
  vtkMarkSelectedRows_Init(csi);
  vtkMPIMoveData_Init(csi);
  vtkNetworkImageSource_Init(csi);
  vtkOrderedCompositeDistributor_Init(csi);
  vtkPlotlyJsonExporter_Init(csi);
  vtkPVGeometryFilter_Init(csi);
  vtkRedistributePolyData_Init(csi);
  vtkResampledAMRImageSource_Init(csi);
  vtkSelectionDeliveryFilter_Init(csi);
  vtkSortedTableStreamer_Init(csi);
  vtkSquirtCompressor_Init(csi);
  vtkVolumeRepresentationPreprocessor_Init(csi);
  vtkWeightedRedistributePolyData_Init(csi);
  vtkZlibImageCompressor_Init(csi);
}
