#ifndef MooseXfemClip_client_server_h
#define MooseXfemClip_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkMooseXfemClipCS_Initialize(vtkClientServerInterpreter*);

inline void MooseXfemClip_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkMooseXfemClipCS_Initialize(csi);
}

#endif
