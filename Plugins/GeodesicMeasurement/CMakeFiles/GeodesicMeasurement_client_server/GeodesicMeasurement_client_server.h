#ifndef GeodesicMeasurement_client_server_h
#define GeodesicMeasurement_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkGeodesicMeasurementFiltersCS_Initialize(vtkClientServerInterpreter*);

inline void GeodesicMeasurement_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkGeodesicMeasurementFiltersCS_Initialize(csi);
}

#endif
