#ifndef Moments_server_manager_modules_h
#define Moments_server_manager_modules_h

#include "Moments_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void Moments_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = Moments_server_manager_modulesMomentsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
