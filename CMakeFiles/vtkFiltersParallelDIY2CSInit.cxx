#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAdaptiveResampleToImage_Init(vtkClientServerInterpreter*);
extern void vtkExtractSubsetWithSeed_Init(vtkClientServerInterpreter*);
extern void vtkGenerateGlobalIds_Init(vtkClientServerInterpreter*);
extern void vtkGhostCellsGenerator_Init(vtkClientServerInterpreter*);
extern void vtkNativePartitioningStrategy_Init(vtkClientServerInterpreter*);
extern void vtkOverlappingCellsDetector_Init(vtkClientServerInterpreter*);
extern void vtkPartitioningStrategy_Init(vtkClientServerInterpreter*);
extern void vtkPResampleToImage_Init(vtkClientServerInterpreter*);
extern void vtkPResampleWithDataSet_Init(vtkClientServerInterpreter*);
extern void vtkProbeLineFilter_Init(vtkClientServerInterpreter*);
extern void vtkRedistributeDataSetFilter_Init(vtkClientServerInterpreter*);
extern void vtkStitchImageDataWithGhosts_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersParallelDIY2CS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAdaptiveResampleToImage_Init(csi);
  vtkExtractSubsetWithSeed_Init(csi);
  vtkGenerateGlobalIds_Init(csi);
  vtkGhostCellsGenerator_Init(csi);
  vtkNativePartitioningStrategy_Init(csi);
  vtkOverlappingCellsDetector_Init(csi);
  vtkPartitioningStrategy_Init(csi);
  vtkPResampleToImage_Init(csi);
  vtkPResampleWithDataSet_Init(csi);
  vtkProbeLineFilter_Init(csi);
  vtkRedistributeDataSetFilter_Init(csi);
  vtkStitchImageDataWithGhosts_Init(csi);
}
