#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkmConfigFilters_Init(vtkClientServerInterpreter*);
extern void vtkmFilterOverrides_Init(vtkClientServerInterpreter*);
extern void vtkmAverageToCells_Init(vtkClientServerInterpreter*);
extern void vtkmAverageToPoints_Init(vtkClientServerInterpreter*);
extern void vtkmCleanGrid_Init(vtkClientServerInterpreter*);
extern void vtkmClip_Init(vtkClientServerInterpreter*);
extern void vtkmContour_Init(vtkClientServerInterpreter*);
extern void vtkmCoordinateSystemTransform_Init(vtkClientServerInterpreter*);
extern void vtkmExternalFaces_Init(vtkClientServerInterpreter*);
extern void vtkmExtractVOI_Init(vtkClientServerInterpreter*);
extern void vtkmGradient_Init(vtkClientServerInterpreter*);
extern void vtkmHistogram_Init(vtkClientServerInterpreter*);
extern void vtkmImageConnectivity_Init(vtkClientServerInterpreter*);
extern void vtkmLevelOfDetail_Init(vtkClientServerInterpreter*);
extern void vtkmNDHistogram_Init(vtkClientServerInterpreter*);
extern void vtkmPointElevation_Init(vtkClientServerInterpreter*);
extern void vtkmPointTransform_Init(vtkClientServerInterpreter*);
extern void vtkmPolyDataNormals_Init(vtkClientServerInterpreter*);
extern void vtkmProbe_Init(vtkClientServerInterpreter*);
extern void vtkmSlice_Init(vtkClientServerInterpreter*);
extern void vtkmThreshold_Init(vtkClientServerInterpreter*);
extern void vtkmTriangleMeshPointNormals_Init(vtkClientServerInterpreter*);
extern void vtkmWarpScalar_Init(vtkClientServerInterpreter*);
extern void vtkmWarpVector_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkAcceleratorsVTKmFiltersCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkmConfigFilters_Init(csi);
  vtkmFilterOverrides_Init(csi);
  vtkmAverageToCells_Init(csi);
  vtkmAverageToPoints_Init(csi);
  vtkmCleanGrid_Init(csi);
  vtkmClip_Init(csi);
  vtkmContour_Init(csi);
  vtkmCoordinateSystemTransform_Init(csi);
  vtkmExternalFaces_Init(csi);
  vtkmExtractVOI_Init(csi);
  vtkmGradient_Init(csi);
  vtkmHistogram_Init(csi);
  vtkmImageConnectivity_Init(csi);
  vtkmLevelOfDetail_Init(csi);
  vtkmNDHistogram_Init(csi);
  vtkmPointElevation_Init(csi);
  vtkmPointTransform_Init(csi);
  vtkmPolyDataNormals_Init(csi);
  vtkmProbe_Init(csi);
  vtkmSlice_Init(csi);
  vtkmThreshold_Init(csi);
  vtkmTriangleMeshPointNormals_Init(csi);
  vtkmWarpScalar_Init(csi);
  vtkmWarpVector_Init(csi);
}
