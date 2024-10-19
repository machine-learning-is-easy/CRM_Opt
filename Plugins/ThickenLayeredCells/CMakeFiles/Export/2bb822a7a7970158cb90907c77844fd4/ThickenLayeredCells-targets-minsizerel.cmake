#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ThickenLayeredCells::vtkThickenLayeredCellsFilters" for configuration "MinSizeRel"
set_property(TARGET ThickenLayeredCells::vtkThickenLayeredCellsFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(ThickenLayeredCells::vtkThickenLayeredCellsFilters PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ThickenLayeredCells/vtkThickenLayeredCellsFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::CommonCore;VTK::CommonDataModel"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ThickenLayeredCells/vtkThickenLayeredCellsFilters.dll"
  )

list(APPEND _cmake_import_check_targets ThickenLayeredCells::vtkThickenLayeredCellsFilters )
list(APPEND _cmake_import_check_files_for_ThickenLayeredCells::vtkThickenLayeredCellsFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ThickenLayeredCells/vtkThickenLayeredCellsFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ThickenLayeredCells/vtkThickenLayeredCellsFilters.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
