#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThickenLayeredCells::vtkThickenLayeredCellsFilters" for configuration "Debug"
set_property(TARGET ThickenLayeredCells::vtkThickenLayeredCellsFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ThickenLayeredCells::vtkThickenLayeredCellsFilters PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ThickenLayeredCells/vtkThickenLayeredCellsFiltersd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonDataModel"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ThickenLayeredCells/vtkThickenLayeredCellsFiltersd.dll"
  )

list(APPEND _cmake_import_check_targets ThickenLayeredCells::vtkThickenLayeredCellsFilters )
list(APPEND _cmake_import_check_files_for_ThickenLayeredCells::vtkThickenLayeredCellsFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ThickenLayeredCells/vtkThickenLayeredCellsFiltersd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ThickenLayeredCells/vtkThickenLayeredCellsFiltersd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
