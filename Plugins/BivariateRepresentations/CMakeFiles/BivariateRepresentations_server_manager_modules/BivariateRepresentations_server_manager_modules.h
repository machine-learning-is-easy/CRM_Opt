#ifndef BivariateRepresentations_server_manager_modules_h
#define BivariateRepresentations_server_manager_modules_h

#include "BivariateRepresentations_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void BivariateRepresentations_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = BivariateRepresentations_server_manager_modulesBivariateRepresentationsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
