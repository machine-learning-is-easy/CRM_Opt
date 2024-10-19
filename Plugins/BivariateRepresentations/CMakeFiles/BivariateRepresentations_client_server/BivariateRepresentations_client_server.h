#ifndef BivariateRepresentations_client_server_h
#define BivariateRepresentations_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkBivariateRepresentationsCS_Initialize(vtkClientServerInterpreter*);

inline void BivariateRepresentations_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBivariateRepresentationsCS_Initialize(csi);
}

#endif
