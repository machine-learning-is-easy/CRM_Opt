#ifndef GMVReader_server_manager_modules_h
#define GMVReader_server_manager_modules_h

#include "GMVReader_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void GMVReader_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = GMVReader_server_manager_modulesGMVReaderSMGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
