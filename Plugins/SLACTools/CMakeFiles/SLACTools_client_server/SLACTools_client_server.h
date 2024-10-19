#ifndef SLACTools_client_server_h
#define SLACTools_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkSLACFiltersCS_Initialize(vtkClientServerInterpreter*);

inline void SLACTools_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkSLACFiltersCS_Initialize(csi);
}

#endif
