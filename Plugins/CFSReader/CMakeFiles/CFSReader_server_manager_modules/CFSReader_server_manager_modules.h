#ifndef CFSReader_server_manager_modules_h
#define CFSReader_server_manager_modules_h

#include "CFSReader_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void CFSReader_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = CFSReader_server_manager_modulesCFSReaderGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
