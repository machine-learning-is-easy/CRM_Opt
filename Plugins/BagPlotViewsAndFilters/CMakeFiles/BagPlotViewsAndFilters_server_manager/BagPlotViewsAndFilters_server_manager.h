#ifndef BagPlotViewsAndFilters_server_manager_h
#define BagPlotViewsAndFilters_server_manager_h

#include "BagPlotViewsAndFilters_server_manager_data.h"
#include <string>
#include <vector>

inline void BagPlotViewsAndFilters_server_manager_initialize(std::vector<std::string>& xmls)
{
  (void)xmls;
  {
    char *init_string = BagPlotViewsAndFilters_server_managerBagPlotViewsAndFiltersGetInterfaces();
    xmls.emplace_back(init_string);
    delete [] init_string;
  }
}

#endif
