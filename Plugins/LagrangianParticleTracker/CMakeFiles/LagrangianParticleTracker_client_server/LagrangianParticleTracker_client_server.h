#ifndef LagrangianParticleTracker_client_server_h
#define LagrangianParticleTracker_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkLagrangianParticleTrackerCS_Initialize(vtkClientServerInterpreter*);

inline void LagrangianParticleTracker_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkLagrangianParticleTrackerCS_Initialize(csi);
}

#endif
