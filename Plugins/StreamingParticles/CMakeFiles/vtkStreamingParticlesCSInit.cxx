#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkPVRandomPointsStreamingSource_Init(vtkClientServerInterpreter*);
extern void vtkStreamingParticlesPriorityQueue_Init(vtkClientServerInterpreter*);
extern void vtkStreamingParticlesRepresentation_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkStreamingParticlesCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPVRandomPointsStreamingSource_Init(csi);
  vtkStreamingParticlesPriorityQueue_Init(csi);
  vtkStreamingParticlesRepresentation_Init(csi);
}
