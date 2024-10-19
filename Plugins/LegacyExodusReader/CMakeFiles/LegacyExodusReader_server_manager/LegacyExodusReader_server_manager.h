#ifndef LegacyExodusReader_server_manager_h
#define LegacyExodusReader_server_manager_h

#include "LegacyExodusReader_server_manager_data.h"
#include <string>
#include <vector>

inline void LegacyExodusReader_server_manager_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = LegacyExodusReader_server_managerLegacyExodusReaderGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
