#ifndef StreamingParticles_client_server_h
#define StreamingParticles_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkStreamingParticlesCS_Initialize(vtkClientServerInterpreter*);

inline void StreamingParticles_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkStreamingParticlesCS_Initialize(csi);
}

#endif
