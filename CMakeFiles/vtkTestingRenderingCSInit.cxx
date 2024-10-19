#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkMultiBaselineRegressionTest_Init(vtkClientServerInterpreter*);
extern void vtkTesting_Init(vtkClientServerInterpreter*);
extern void vtkTestingInteractor_Init(vtkClientServerInterpreter*);
extern void vtkTestingObjectFactory_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkTestingRenderingCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMultiBaselineRegressionTest_Init(csi);
  vtkTesting_Init(csi);
  vtkTestingInteractor_Init(csi);
  vtkTestingObjectFactory_Init(csi);
}
