#ifndef PanoramicProjectionView_client_server_h
#define PanoramicProjectionView_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkPanoramicProjectionViewsCS_Initialize(vtkClientServerInterpreter*);

inline void PanoramicProjectionView_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPanoramicProjectionViewsCS_Initialize(csi);
}

#endif
