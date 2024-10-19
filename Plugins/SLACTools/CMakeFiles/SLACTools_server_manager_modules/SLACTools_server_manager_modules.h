#ifndef SLACTools_server_manager_modules_h
#define SLACTools_server_manager_modules_h

#include "SLACTools_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void SLACTools_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = SLACTools_server_manager_modulesSLACToolsSMGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
