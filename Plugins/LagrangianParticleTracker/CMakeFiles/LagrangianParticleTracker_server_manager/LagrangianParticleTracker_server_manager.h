#ifndef LagrangianParticleTracker_server_manager_h
#define LagrangianParticleTracker_server_manager_h

#include "LagrangianParticleTracker_server_manager_data.h"
#include <string>
#include <vector>

inline void LagrangianParticleTracker_server_manager_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = LagrangianParticleTracker_server_managerLagrangianParticleTrackerGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
