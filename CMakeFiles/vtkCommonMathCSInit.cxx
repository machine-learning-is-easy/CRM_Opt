#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkTuple_Init(vtkClientServerInterpreter*);
extern void vtkAmoebaMinimizer_Init(vtkClientServerInterpreter*);
extern void vtkFFT_Init(vtkClientServerInterpreter*);
extern void vtkFunctionSet_Init(vtkClientServerInterpreter*);
extern void vtkInitialValueProblemSolver_Init(vtkClientServerInterpreter*);
extern void vtkMatrix3x3_Init(vtkClientServerInterpreter*);
extern void vtkMatrix4x4_Init(vtkClientServerInterpreter*);
extern void vtkPolynomialSolversUnivariate_Init(vtkClientServerInterpreter*);
extern void vtkQuaternionInterpolator_Init(vtkClientServerInterpreter*);
extern void vtkRungeKutta2_Init(vtkClientServerInterpreter*);
extern void vtkRungeKutta4_Init(vtkClientServerInterpreter*);
extern void vtkRungeKutta45_Init(vtkClientServerInterpreter*);
extern void vtkQuaternion_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkCommonMathCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkTuple_Init(csi);
  vtkAmoebaMinimizer_Init(csi);
  vtkFFT_Init(csi);
  vtkFunctionSet_Init(csi);
  vtkInitialValueProblemSolver_Init(csi);
  vtkMatrix3x3_Init(csi);
  vtkMatrix4x4_Init(csi);
  vtkPolynomialSolversUnivariate_Init(csi);
  vtkQuaternionInterpolator_Init(csi);
  vtkRungeKutta2_Init(csi);
  vtkRungeKutta4_Init(csi);
  vtkRungeKutta45_Init(csi);
  vtkQuaternion_Init(csi);
}
