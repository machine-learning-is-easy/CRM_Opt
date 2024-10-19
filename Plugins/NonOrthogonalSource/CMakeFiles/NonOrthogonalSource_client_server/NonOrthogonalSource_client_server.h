#ifndef NonOrthogonalSource_client_server_h
#define NonOrthogonalSource_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkNonOrthogonalSourcesCS_Initialize(vtkClientServerInterpreter*);

inline void NonOrthogonalSource_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkNonOrthogonalSourcesCS_Initialize(csi);
}

#endif
