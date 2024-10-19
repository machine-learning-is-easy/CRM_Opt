#ifndef AnalyzeNIfTIReaderWriter_server_manager_modules_h
#define AnalyzeNIfTIReaderWriter_server_manager_modules_h

#include "AnalyzeNIfTIReaderWriter_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void AnalyzeNIfTIReaderWriter_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = AnalyzeNIfTIReaderWriter_server_manager_modulesAnalyzeNIfTISMGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
