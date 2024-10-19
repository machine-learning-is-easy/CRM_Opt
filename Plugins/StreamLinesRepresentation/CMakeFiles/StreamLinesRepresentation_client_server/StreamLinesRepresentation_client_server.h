#ifndef StreamLinesRepresentation_client_server_h
#define StreamLinesRepresentation_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkStreamLinesCS_Initialize(vtkClientServerInterpreter*);

inline void StreamLinesRepresentation_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkStreamLinesCS_Initialize(csi);
}

#endif
