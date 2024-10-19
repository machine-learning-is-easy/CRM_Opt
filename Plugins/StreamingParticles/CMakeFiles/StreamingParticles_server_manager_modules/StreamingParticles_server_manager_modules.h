#ifndef StreamingParticles_server_manager_modules_h
#define StreamingParticles_server_manager_modules_h

#include "StreamingParticles_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void StreamingParticles_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = StreamingParticles_server_manager_modulesStreamingParticlesGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
