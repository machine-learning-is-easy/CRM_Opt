#ifndef HyperTreeGridADR_server_manager_modules_h
#define HyperTreeGridADR_server_manager_modules_h

#include "HyperTreeGridADR_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void HyperTreeGridADR_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = HyperTreeGridADR_server_manager_modulesHyperTreeGridFiltersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
