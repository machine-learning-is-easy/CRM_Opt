#ifndef NonOrthogonalSource_server_manager_modules_h
#define NonOrthogonalSource_server_manager_modules_h

#include "NonOrthogonalSource_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void NonOrthogonalSource_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = NonOrthogonalSource_server_manager_modulesvtkNonOrthogonalSourceGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
