#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkLagrangianHelperBase_Init(vtkClientServerInterpreter*);
extern void vtkLagrangianSeedHelper_Init(vtkClientServerInterpreter*);
extern void vtkLagrangianSurfaceHelper_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkLagrangianParticleTrackerCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkLagrangianHelperBase_Init(csi);
  vtkLagrangianSeedHelper_Init(csi);
  vtkLagrangianSurfaceHelper_Init(csi);
}
