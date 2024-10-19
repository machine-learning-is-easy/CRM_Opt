#ifndef LegacyGhostCellsGenerator_client_server_h
#define LegacyGhostCellsGenerator_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void LegacyGhostCellsGeneratorFiltersCS_Initialize(vtkClientServerInterpreter*);

inline void LegacyGhostCellsGenerator_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  LegacyGhostCellsGeneratorFiltersCS_Initialize(csi);
}

#endif
