#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkCriticalTime_Init(vtkClientServerInterpreter*);
extern void vtkForceStaticMesh_Init(vtkClientServerInterpreter*);
extern void vtkDataObjectMeshCache_Init(vtkClientServerInterpreter*);
extern void vtkTemporalSmoothing_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersTemporalCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCriticalTime_Init(csi);
  vtkForceStaticMesh_Init(csi);
  vtkDataObjectMeshCache_Init(csi);
  vtkTemporalSmoothing_Init(csi);
}
