#ifndef DigitalRockPhysics_server_manager_modules_h
#define DigitalRockPhysics_server_manager_modules_h

#include "DigitalRockPhysics_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void DigitalRockPhysics_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = DigitalRockPhysics_server_manager_modulesDigitalRockPhysicsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
