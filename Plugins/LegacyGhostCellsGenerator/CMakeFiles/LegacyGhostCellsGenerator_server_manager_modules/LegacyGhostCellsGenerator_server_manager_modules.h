#ifndef LegacyGhostCellsGenerator_server_manager_modules_h
#define LegacyGhostCellsGenerator_server_manager_modules_h

#include "LegacyGhostCellsGenerator_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void LegacyGhostCellsGenerator_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = LegacyGhostCellsGenerator_server_manager_modulesLegacyGhostCellsGeneratorGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
