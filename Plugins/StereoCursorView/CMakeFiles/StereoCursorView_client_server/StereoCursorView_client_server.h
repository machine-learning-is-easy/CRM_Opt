#ifndef StereoCursorView_client_server_h
#define StereoCursorView_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void StereoCursorViewsCS_Initialize(vtkClientServerInterpreter*);

inline void StereoCursorView_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  StereoCursorViewsCS_Initialize(csi);
}

#endif
