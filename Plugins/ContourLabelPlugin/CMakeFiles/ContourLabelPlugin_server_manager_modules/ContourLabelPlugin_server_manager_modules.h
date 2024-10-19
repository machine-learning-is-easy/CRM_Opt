#ifndef ContourLabelPlugin_server_manager_modules_h
#define ContourLabelPlugin_server_manager_modules_h

#include "ContourLabelPlugin_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void ContourLabelPlugin_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = ContourLabelPlugin_server_manager_modulesContourLabelPluginGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
