#include "vtkABI.h"
#include "vtkClientServerInterpreter.h"

extern void vtkAbstractInterpolatedVelocityField_Init(vtkClientServerInterpreter*);
extern void vtkAMRInterpolatedVelocityField_Init(vtkClientServerInterpreter*);
extern void vtkCompositeInterpolatedVelocityField_Init(vtkClientServerInterpreter*);
extern void vtkEvenlySpacedStreamlines2D_Init(vtkClientServerInterpreter*);
extern void vtkLagrangianBasicIntegrationModel_Init(vtkClientServerInterpreter*);
extern void vtkLagrangianMatidaIntegrationModel_Init(vtkClientServerInterpreter*);
extern void vtkLagrangianParticle_Init(vtkClientServerInterpreter*);
extern void vtkLagrangianParticleTracker_Init(vtkClientServerInterpreter*);
extern void vtkLinearTransformCellLocator_Init(vtkClientServerInterpreter*);
extern void vtkModifiedBSPTree_Init(vtkClientServerInterpreter*);
extern void vtkParallelVectors_Init(vtkClientServerInterpreter*);
extern void vtkParticlePathFilter_Init(vtkClientServerInterpreter*);
extern void vtkParticleTracer_Init(vtkClientServerInterpreter*);
extern void vtkParticleTracerBase_Init(vtkClientServerInterpreter*);
extern void vtkStreaklineFilter_Init(vtkClientServerInterpreter*);
extern void vtkStreamSurface_Init(vtkClientServerInterpreter*);
extern void vtkStreamTracer_Init(vtkClientServerInterpreter*);
extern void vtkTemporalInterpolatedVelocityField_Init(vtkClientServerInterpreter*);
extern void vtkVectorFieldTopology_Init(vtkClientServerInterpreter*);
extern void vtkVortexCore_Init(vtkClientServerInterpreter*);

extern "C" void VTK_ABI_EXPORT vtkFiltersFlowPathsCS_Initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAbstractInterpolatedVelocityField_Init(csi);
  vtkAMRInterpolatedVelocityField_Init(csi);
  vtkCompositeInterpolatedVelocityField_Init(csi);
  vtkEvenlySpacedStreamlines2D_Init(csi);
  vtkLagrangianBasicIntegrationModel_Init(csi);
  vtkLagrangianMatidaIntegrationModel_Init(csi);
  vtkLagrangianParticle_Init(csi);
  vtkLagrangianParticleTracker_Init(csi);
  vtkLinearTransformCellLocator_Init(csi);
  vtkModifiedBSPTree_Init(csi);
  vtkParallelVectors_Init(csi);
  vtkParticlePathFilter_Init(csi);
  vtkParticleTracer_Init(csi);
  vtkParticleTracerBase_Init(csi);
  vtkStreaklineFilter_Init(csi);
  vtkStreamSurface_Init(csi);
  vtkStreamTracer_Init(csi);
  vtkTemporalInterpolatedVelocityField_Init(csi);
  vtkVectorFieldTopology_Init(csi);
  vtkVortexCore_Init(csi);
}
