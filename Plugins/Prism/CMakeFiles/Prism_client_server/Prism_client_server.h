#ifndef Prism_client_server_h
#define Prism_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkPrismFiltersCS_Initialize(vtkClientServerInterpreter*);
extern "C" void vtkPrismReadersCS_Initialize(vtkClientServerInterpreter*);
extern "C" void vtkPrismServerManagerCS_Initialize(vtkClientServerInterpreter*);
extern "C" void vtkPrismViewsCS_Initialize(vtkClientServerInterpreter*);

inline void Prism_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkPrismFiltersCS_Initialize(csi);
  vtkPrismReadersCS_Initialize(csi);
  vtkPrismServerManagerCS_Initialize(csi);
  vtkPrismViewsCS_Initialize(csi);
}

#endif
