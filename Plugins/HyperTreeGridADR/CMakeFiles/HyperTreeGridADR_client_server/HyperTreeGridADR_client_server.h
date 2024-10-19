#ifndef HyperTreeGridADR_client_server_h
#define HyperTreeGridADR_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkFiltersHyperTreeGridADRCS_Initialize(vtkClientServerInterpreter*);

inline void HyperTreeGridADR_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkFiltersHyperTreeGridADRCS_Initialize(csi);
}

#endif
