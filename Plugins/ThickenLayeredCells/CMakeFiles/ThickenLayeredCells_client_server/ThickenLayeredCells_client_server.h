#ifndef ThickenLayeredCells_client_server_h
#define ThickenLayeredCells_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkThickenLayeredCellsFiltersCS_Initialize(vtkClientServerInterpreter*);

inline void ThickenLayeredCells_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkThickenLayeredCellsFiltersCS_Initialize(csi);
}

#endif
