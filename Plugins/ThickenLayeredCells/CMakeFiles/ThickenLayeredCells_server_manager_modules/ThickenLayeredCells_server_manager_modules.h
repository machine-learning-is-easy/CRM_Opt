#ifndef ThickenLayeredCells_server_manager_modules_h
#define ThickenLayeredCells_server_manager_modules_h

#include "ThickenLayeredCells_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void ThickenLayeredCells_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = ThickenLayeredCells_server_manager_modulesThickenLayeredCellsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
