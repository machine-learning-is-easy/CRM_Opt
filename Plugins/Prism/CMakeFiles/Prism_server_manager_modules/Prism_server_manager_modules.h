#ifndef Prism_server_manager_modules_h
#define Prism_server_manager_modules_h

#include "Prism_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void Prism_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = Prism_server_manager_modulesPrismReadersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
  {
    char *init_string = Prism_server_manager_modulesPrismViewsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
