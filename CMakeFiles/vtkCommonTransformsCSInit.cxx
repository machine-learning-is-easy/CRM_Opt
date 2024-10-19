#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAbstractTransform_Init(vtkClientServerInterpreter*);
extern void vtkCylindricalTransform_Init(vtkClientServerInterpreter*);
extern void vtkGeneralTransform_Init(vtkClientServerInterpreter*);
extern void vtkHomogeneousTransform_Init(vtkClientServerInterpreter*);
extern void vtkIdentityTransform_Init(vtkClientServerInterpreter*);
extern void vtkLandmarkTransform_Init(vtkClientServerInterpreter*);
extern void vtkLinearTransform_Init(vtkClientServerInterpreter*);
extern void vtkMatrixToHomogeneousTransform_Init(vtkClientServerInterpreter*);
extern void vtkMatrixToLinearTransform_Init(vtkClientServerInterpreter*);
extern void vtkPerspectiveTransform_Init(vtkClientServerInterpreter*);
extern void vtkSphericalTransform_Init(vtkClientServerInterpreter*);
extern void vtkThinPlateSplineTransform_Init(vtkClientServerInterpreter*);
extern void vtkTransform_Init(vtkClientServerInterpreter*);
extern void vtkTransform2D_Init(vtkClientServerInterpreter*);
extern void vtkTransformCollection_Init(vtkClientServerInterpreter*);
extern void vtkWarpTransform_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkCommonTransformsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAbstractTransform_Init(csi);
  vtkCylindricalTransform_Init(csi);
  vtkGeneralTransform_Init(csi);
  vtkHomogeneousTransform_Init(csi);
  vtkIdentityTransform_Init(csi);
  vtkLandmarkTransform_Init(csi);
  vtkLinearTransform_Init(csi);
  vtkMatrixToHomogeneousTransform_Init(csi);
  vtkMatrixToLinearTransform_Init(csi);
  vtkPerspectiveTransform_Init(csi);
  vtkSphericalTransform_Init(csi);
  vtkThinPlateSplineTransform_Init(csi);
  vtkTransform_Init(csi);
  vtkTransform2D_Init(csi);
  vtkTransformCollection_Init(csi);
  vtkWarpTransform_Init(csi);
}
