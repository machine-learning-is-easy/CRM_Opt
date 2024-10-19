#ifndef StereoCursorView_server_manager_modules_h
#define StereoCursorView_server_manager_modules_h

#include "StereoCursorView_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void StereoCursorView_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = StereoCursorView_server_manager_modulesStereoCursorViewGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
