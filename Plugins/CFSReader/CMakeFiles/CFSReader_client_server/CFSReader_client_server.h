#ifndef CFSReader_client_server_h
#define CFSReader_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkCFSReaderCS_Initialize(vtkClientServerInterpreter*);

inline void CFSReader_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkCFSReaderCS_Initialize(csi);
}

#endif
