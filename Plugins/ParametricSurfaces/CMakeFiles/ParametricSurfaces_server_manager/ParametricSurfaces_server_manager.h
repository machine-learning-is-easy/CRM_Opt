#ifndef ParametricSurfaces_server_manager_h
#define ParametricSurfaces_server_manager_h

#include "ParametricSurfaces_server_manager_data.h"
#include <string>
#include <vector>

inline void ParametricSurfaces_server_manager_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = ParametricSurfaces_server_managerParametricSurfacesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
