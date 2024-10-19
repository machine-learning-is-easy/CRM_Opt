#ifndef ExplicitStructuredGrid_client_server_h
#define ExplicitStructuredGrid_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkExplicitStructuredGridCS_Initialize(vtkClientServerInterpreter*);

inline void ExplicitStructuredGrid_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkExplicitStructuredGridCS_Initialize(csi);
}

#endif
