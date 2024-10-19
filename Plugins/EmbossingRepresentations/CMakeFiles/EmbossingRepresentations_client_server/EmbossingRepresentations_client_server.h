#ifndef EmbossingRepresentations_client_server_h
#define EmbossingRepresentations_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkEmbossingRepresentationsCS_Initialize(vtkClientServerInterpreter*);

inline void EmbossingRepresentations_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkEmbossingRepresentationsCS_Initialize(csi);
}

#endif
