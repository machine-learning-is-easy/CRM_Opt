#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "DigitalRockPhysics::DigitalRocksFilters" for configuration "Debug"
set_property(TARGET DigitalRockPhysics::DigitalRocksFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(DigitalRockPhysics::DigitalRocksFilters PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalRockPhysics/vtkDigitalRocksFiltersd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonDataModel;VTK::ParallelCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalRockPhysics/vtkDigitalRocksFiltersd.dll"
  )

list(APPEND _cmake_import_check_targets DigitalRockPhysics::DigitalRocksFilters )
list(APPEND _cmake_import_check_files_for_DigitalRockPhysics::DigitalRocksFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalRockPhysics/vtkDigitalRocksFiltersd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalRockPhysics/vtkDigitalRocksFiltersd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
