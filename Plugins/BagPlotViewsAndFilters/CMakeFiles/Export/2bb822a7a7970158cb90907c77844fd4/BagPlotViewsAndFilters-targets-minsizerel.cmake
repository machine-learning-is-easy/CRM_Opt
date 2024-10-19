#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot" for configuration "MinSizeRel"
set_property(TARGET BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlot.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "ParaView::VTKExtensionsFiltersRendering;ParaView::VTKExtensionsFiltersStatistics;ParaView::VTKExtensionsMisc;VTK::FiltersExtraction;VTK::FiltersStatistics;VTK::InfovisCore"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlot.dll"
  )

list(APPEND _cmake_import_check_targets BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot )
list(APPEND _cmake_import_check_files_for_BagPlotViewsAndFilters::BagPlotViewsAndFiltersBagPlot "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlot.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BagPlotViewsAndFilters/vtkBagPlotViewsAndFiltersBagPlot.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
