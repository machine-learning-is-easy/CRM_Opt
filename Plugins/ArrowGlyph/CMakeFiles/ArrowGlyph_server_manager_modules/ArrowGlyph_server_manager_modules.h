#ifndef ArrowGlyph_server_manager_modules_h
#define ArrowGlyph_server_manager_modules_h

#include "ArrowGlyph_server_manager_modules_data.h"
#include <string>
#include <vector>

inline void ArrowGlyph_server_manager_modules_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = ArrowGlyph_server_manager_modulesvtkArrowGlyphFilterGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
