#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GMVReader::vtkGMVReader" for configuration "MinSizeRel"
set_property(TARGET GMVReader::vtkGMVReader APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(GMVReader::vtkGMVReader PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GMVReader/vtkGMVReader.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMisc;VTK::ParallelCore"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GMVReader/vtkGMVReader.dll"
  )

list(APPEND _cmake_import_check_targets GMVReader::vtkGMVReader )
list(APPEND _cmake_import_check_files_for_GMVReader::vtkGMVReader "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GMVReader/vtkGMVReader.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GMVReader/vtkGMVReader.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
