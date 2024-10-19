#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot" for configuration "Debug"
set_property(TARGET BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlotd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ParaView::VTKExtensionsFiltersRendering;ParaView::VTKExtensionsFiltersStatistics;ParaView::VTKExtensionsMisc;VTK::FiltersExtraction;VTK::FiltersStatistics;VTK::InfovisCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlotd.dll"
  )

list(APPEND _cmake_import_check_targets BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot )
list(APPEND _cmake_import_check_files_for_BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlotd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlotd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
