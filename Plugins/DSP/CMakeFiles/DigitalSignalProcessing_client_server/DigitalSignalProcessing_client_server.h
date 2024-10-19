#ifndef DigitalSignalProcessing_client_server_h
#define DigitalSignalProcessing_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkDSPFiltersPluginCS_Initialize(vtkClientServerInterpreter*);

inline void DigitalSignalProcessing_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkDSPFiltersPluginCS_Initialize(csi);
}

#endif
