#ifndef AcceleratedAlgorithms_server_manager_h
#define AcceleratedAlgorithms_server_manager_h

#include "AcceleratedAlgorithms_server_manager_data.h"
#include <string>
#include <vector>

inline void AcceleratedAlgorithms_server_manager_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = AcceleratedAlgorithms_server_managerAcceleratedAlgorithmsGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
