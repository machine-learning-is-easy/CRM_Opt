#ifndef EmbossingRepresentations_server_manager_modules_h
#define EmbossingRepresentations_server_manager_modules_h

#include "EmbossingRepresentations_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void EmbossingRepresentations_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = EmbossingRepresentations_server_manager_modulesEmbossingRepresentationsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
