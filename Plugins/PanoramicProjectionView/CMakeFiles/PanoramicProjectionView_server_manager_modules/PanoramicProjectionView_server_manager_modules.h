#ifndef PanoramicProjectionView_server_manager_modules_h
#define PanoramicProjectionView_server_manager_modules_h

#include "PanoramicProjectionView_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void PanoramicProjectionView_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = PanoramicProjectionView_server_manager_modulesPanoramicProjectionViewGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
