#ifndef DigitalRockPhysics_client_server_h
#define DigitalRockPhysics_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkDigitalRocksFiltersCS_Initialize(vtkClientServerInterpreter*);

inline void DigitalRockPhysics_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkDigitalRocksFiltersCS_Initialize(csi);
}

#endif
