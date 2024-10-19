#ifndef MooseXfemClip_server_manager_modules_h
#define MooseXfemClip_server_manager_modules_h

#include "MooseXfemClip_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void MooseXfemClip_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = MooseXfemClip_server_manager_modulesMooseXfemClipGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
