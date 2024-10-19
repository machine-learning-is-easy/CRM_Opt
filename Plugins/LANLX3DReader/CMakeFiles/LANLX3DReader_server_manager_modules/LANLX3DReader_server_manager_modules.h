#ifndef LANLX3DReader_server_manager_modules_h
#define LANLX3DReader_server_manager_modules_h

#include "LANLX3DReader_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void LANLX3DReader_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = LANLX3DReader_server_manager_modulesLANLX3DReaderGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
