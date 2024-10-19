#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LegacyGhostCellsGeneratorFilters" for configuration "Debug"
set_property(TARGET LegacyGhostCellsGeneratorFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(LegacyGhostCellsGeneratorFilters PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFiltersd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMisc;VTK::ParallelCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFiltersd.dll"
  )

list(APPEND _cmake_import_check_targets LegacyGhostCellsGeneratorFilters )
list(APPEND _cmake_import_check_files_for_LegacyGhostCellsGeneratorFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFiltersd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LegacyGhostCellsGenerator/LegacyGhostCellsGeneratorFiltersd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
