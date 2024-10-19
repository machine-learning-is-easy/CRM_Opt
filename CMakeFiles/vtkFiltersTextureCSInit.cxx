#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkImplicitTextureCoords_Init(vtkClientServerInterpreter*);
extern void vtkScalarsToTextureFilter_Init(vtkClientServerInterpreter*);
extern void vtkTextureMapToCylinder_Init(vtkClientServerInterpreter*);
extern void vtkTextureMapToPlane_Init(vtkClientServerInterpreter*);
extern void vtkTextureMapToSphere_Init(vtkClientServerInterpreter*);
extern void vtkThresholdTextureCoords_Init(vtkClientServerInterpreter*);
extern void vtkTransformTextureCoords_Init(vtkClientServerInterpreter*);
extern void vtkTriangularTCoords_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersTextureCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkImplicitTextureCoords_Init(csi);
  vtkScalarsToTextureFilter_Init(csi);
  vtkTextureMapToCylinder_Init(csi);
  vtkTextureMapToPlane_Init(csi);
  vtkTextureMapToSphere_Init(csi);
  vtkThresholdTextureCoords_Init(csi);
  vtkTransformTextureCoords_Init(csi);
  vtkTriangularTCoords_Init(csi);
}
