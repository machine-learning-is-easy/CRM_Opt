#ifndef GeodesicMeasurement_server_manager_modules_h
#define GeodesicMeasurement_server_manager_modules_h

#include "GeodesicMeasurement_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void GeodesicMeasurement_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = GeodesicMeasurement_server_manager_modulesGeodesicMeasurementGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
