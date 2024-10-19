#ifndef Datamine_server_manager_modules_h
#define Datamine_server_manager_modules_h

#include "Datamine_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void Datamine_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = Datamine_server_manager_modulesDatamineReadersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
