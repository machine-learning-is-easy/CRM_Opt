#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "HyperTreeGridFilters" for configuration "MinSizeRel"
set_property(TARGET HyperTreeGridFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(HyperTreeGridFilters PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/HyperTreeGridADR/vtkFiltersHyperTreeGridADR.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::CommonCore;VTK::CommonSystem"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/HyperTreeGridADR/vtkFiltersHyperTreeGridADR.dll"
  )

list(APPEND _cmake_import_check_targets HyperTreeGridFilters )
list(APPEND _cmake_import_check_files_for_HyperTreeGridFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/HyperTreeGridADR/vtkFiltersHyperTreeGridADR.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/HyperTreeGridADR/vtkFiltersHyperTreeGridADR.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
