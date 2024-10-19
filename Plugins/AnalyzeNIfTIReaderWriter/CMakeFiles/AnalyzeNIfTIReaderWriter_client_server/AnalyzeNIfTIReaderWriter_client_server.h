#ifndef AnalyzeNIfTIReaderWriter_client_server_h
#define AnalyzeNIfTIReaderWriter_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkAnalyzeNIfTIIOCS_Initialize(vtkClientServerInterpreter*);

inline void AnalyzeNIfTIReaderWriter_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkAnalyzeNIfTIIOCS_Initialize(csi);
}

#endif
