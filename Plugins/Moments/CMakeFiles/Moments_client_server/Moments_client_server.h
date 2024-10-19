#ifndef Moments_client_server_h
#define Moments_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkMomentFiltersCS_Initialize(vtkClientServerInterpreter*);

inline void Moments_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMomentFiltersCS_Initialize(csi);
}

#endif
