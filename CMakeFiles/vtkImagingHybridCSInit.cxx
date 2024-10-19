#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkBooleanTexture_Init(vtkClientServerInterpreter*);
extern void vtkCheckerboardSplatter_Init(vtkClientServerInterpreter*);
extern void vtkFastSplatter_Init(vtkClientServerInterpreter*);
extern void vtkGaussianSplatter_Init(vtkClientServerInterpreter*);
extern void vtkImageCursor3D_Init(vtkClientServerInterpreter*);
extern void vtkImageRectilinearWipe_Init(vtkClientServerInterpreter*);
extern void vtkImageToPoints_Init(vtkClientServerInterpreter*);
extern void vtkPointLoad_Init(vtkClientServerInterpreter*);
extern void vtkSampleFunction_Init(vtkClientServerInterpreter*);
extern void vtkShepardMethod_Init(vtkClientServerInterpreter*);
extern void vtkSliceCubes_Init(vtkClientServerInterpreter*);
extern void vtkSurfaceReconstructionFilter_Init(vtkClientServerInterpreter*);
extern void vtkTriangularTexture_Init(vtkClientServerInterpreter*);
extern void vtkVoxelModeller_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkImagingHybridCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBooleanTexture_Init(csi);
  vtkCheckerboardSplatter_Init(csi);
  vtkFastSplatter_Init(csi);
  vtkGaussianSplatter_Init(csi);
  vtkImageCursor3D_Init(csi);
  vtkImageRectilinearWipe_Init(csi);
  vtkImageToPoints_Init(csi);
  vtkPointLoad_Init(csi);
  vtkSampleFunction_Init(csi);
  vtkShepardMethod_Init(csi);
  vtkSliceCubes_Init(csi);
  vtkSurfaceReconstructionFilter_Init(csi);
  vtkTriangularTexture_Init(csi);
  vtkVoxelModeller_Init(csi);
}
