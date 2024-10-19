#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "HyperTreeGridFilters" for configuration "Debug"
set_property(TARGET HyperTreeGridFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(HyperTreeGridFilters PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/HyperTreeGridADR/vtkFiltersHyperTreeGridADRd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonSystem"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/HyperTreeGridADR/vtkFiltersHyperTreeGridADRd.dll"
  )

list(APPEND _cmake_import_check_targets HyperTreeGridFilters )
list(APPEND _cmake_import_check_files_for_HyperTreeGridFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/HyperTreeGridADR/vtkFiltersHyperTreeGridADRd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/HyperTreeGridADR/vtkFiltersHyperTreeGridADRd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
