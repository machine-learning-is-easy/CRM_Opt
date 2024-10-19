#ifndef GMVReader_client_server_h
#define GMVReader_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkGMVReaderCS_Initialize(vtkClientServerInterpreter*);

inline void GMVReader_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkGMVReaderCS_Initialize(csi);
}

#endif
