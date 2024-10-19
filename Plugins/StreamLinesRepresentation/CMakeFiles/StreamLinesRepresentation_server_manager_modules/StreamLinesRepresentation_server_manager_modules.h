#ifndef StreamLinesRepresentation_server_manager_modules_h
#define StreamLinesRepresentation_server_manager_modules_h

#include "StreamLinesRepresentation_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void StreamLinesRepresentation_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = StreamLinesRepresentation_server_manager_modulesStreamLinesRepresentationGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
