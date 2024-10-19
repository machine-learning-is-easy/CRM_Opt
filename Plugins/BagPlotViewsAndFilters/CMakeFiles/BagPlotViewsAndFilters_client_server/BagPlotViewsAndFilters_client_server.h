#ifndef BagPlotViewsAndFilters_client_server_h
#define BagPlotViewsAndFilters_client_server_h

#include "vtkClientServerInterpreter.h"

extern "C" void vtkBagPlotViewsAndFiltersBagPlotCS_Initialize(vtkClientServerInterpreter*);

inline void BagPlotViewsAndFilters_client_server_initialize(vtkClientServerInterpreter* csi)
{
  (void)csi;
  vtkBagPlotViewsAndFiltersBagPlotCS_Initialize(csi);
}

#endif
