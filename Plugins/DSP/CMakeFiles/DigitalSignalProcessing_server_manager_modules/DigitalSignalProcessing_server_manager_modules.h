#ifndef DigitalSignalProcessing_server_manager_modules_h
#define DigitalSignalProcessing_server_manager_modules_h

#include "DigitalSignalProcessing_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void DigitalSignalProcessing_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = DigitalSignalProcessing_server_manager_modulesDSPFiltersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
