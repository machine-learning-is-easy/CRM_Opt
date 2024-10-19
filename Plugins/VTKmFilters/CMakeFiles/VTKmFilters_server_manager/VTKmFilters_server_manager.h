#ifndef VTKmFilters_server_manager_h
#define VTKmFilters_server_manager_h

#include "VTKmFilters_server_manager_data.h"
#include <string>
#include <vector>

inline void VTKmFilters_server_manager_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = VTKmFilters_server_managerVTKmSMGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
