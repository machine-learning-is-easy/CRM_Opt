#ifndef ContourLabelPlugin_client_server_h
#define ContourLabelPlugin_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkContourLabelPluginCS_Initialize(vtkClientServerInterpreter*);

inline void ContourLabelPlugin_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkContourLabelPluginCS_Initialize(csi);
}

#endif
