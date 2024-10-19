#ifndef Datamine_client_server_h
#define Datamine_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkDatamineReadersCS_Initialize(vtkClientServerInterpreter*);

inline void Datamine_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkDatamineReadersCS_Initialize(csi);
}

#endif
