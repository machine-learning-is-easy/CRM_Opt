#ifndef LANLX3DReader_client_server_h
#define LANLX3DReader_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkLANLX3DReaderCS_Initialize(vtkClientServerInterpreter*);

inline void LANLX3DReader_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkLANLX3DReaderCS_Initialize(csi);
}

#endif
