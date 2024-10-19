#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAbstractGridConnectivity_Init(vtkClientServerInterpreter*);
extern void vtkAttributeSmoothingFilter_Init(vtkClientServerInterpreter*);
extern void vtkCompositeDataGeometryFilter_Init(vtkClientServerInterpreter*);
extern void vtkDataSetRegionSurfaceFilter_Init(vtkClientServerInterpreter*);
extern void vtkDataSetSurfaceFilter_Init(vtkClientServerInterpreter*);
extern void vtkExplicitStructuredGridSurfaceFilter_Init(vtkClientServerInterpreter*);
extern void vtkGeometryFilter_Init(vtkClientServerInterpreter*);
extern void vtkHierarchicalDataSetGeometryFilter_Init(vtkClientServerInterpreter*);
extern void vtkImageDataGeometryFilter_Init(vtkClientServerInterpreter*);
extern void vtkImageDataToUniformGrid_Init(vtkClientServerInterpreter*);
extern void vtkLinearToQuadraticCellsFilter_Init(vtkClientServerInterpreter*);
extern void vtkMarkBoundaryFilter_Init(vtkClientServerInterpreter*);
extern void vtkProjectSphereFilter_Init(vtkClientServerInterpreter*);
extern void vtkRecoverGeometryWireframe_Init(vtkClientServerInterpreter*);
extern void vtkRectilinearGridGeometryFilter_Init(vtkClientServerInterpreter*);
extern void vtkRectilinearGridPartitioner_Init(vtkClientServerInterpreter*);
extern void vtkStructuredAMRGridConnectivity_Init(vtkClientServerInterpreter*);
extern void vtkStructuredAMRNeighbor_Init(vtkClientServerInterpreter*);
extern void vtkStructuredGridConnectivity_Init(vtkClientServerInterpreter*);
extern void vtkStructuredGridGeometryFilter_Init(vtkClientServerInterpreter*);
extern void vtkStructuredGridPartitioner_Init(vtkClientServerInterpreter*);
extern void vtkStructuredNeighbor_Init(vtkClientServerInterpreter*);
extern void vtkStructuredPointsGeometryFilter_Init(vtkClientServerInterpreter*);
extern void vtkUnstructuredGridGeometryFilter_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersGeometryCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAbstractGridConnectivity_Init(csi);
  vtkAttributeSmoothingFilter_Init(csi);
  vtkCompositeDataGeometryFilter_Init(csi);
  vtkDataSetRegionSurfaceFilter_Init(csi);
  vtkDataSetSurfaceFilter_Init(csi);
  vtkExplicitStructuredGridSurfaceFilter_Init(csi);
  vtkGeometryFilter_Init(csi);
  vtkHierarchicalDataSetGeometryFilter_Init(csi);
  vtkImageDataGeometryFilter_Init(csi);
  vtkImageDataToUniformGrid_Init(csi);
  vtkLinearToQuadraticCellsFilter_Init(csi);
  vtkMarkBoundaryFilter_Init(csi);
  vtkProjectSphereFilter_Init(csi);
  vtkRecoverGeometryWireframe_Init(csi);
  vtkRectilinearGridGeometryFilter_Init(csi);
  vtkRectilinearGridPartitioner_Init(csi);
  vtkStructuredAMRGridConnectivity_Init(csi);
  vtkStructuredAMRNeighbor_Init(csi);
  vtkStructuredGridConnectivity_Init(csi);
  vtkStructuredGridGeometryFilter_Init(csi);
  vtkStructuredGridPartitioner_Init(csi);
  vtkStructuredNeighbor_Init(csi);
  vtkStructuredPointsGeometryFilter_Init(csi);
  vtkUnstructuredGridGeometryFilter_Init(csi);
}
