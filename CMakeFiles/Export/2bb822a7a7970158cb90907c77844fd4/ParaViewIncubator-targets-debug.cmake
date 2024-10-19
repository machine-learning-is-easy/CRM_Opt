#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ParaViewIncubator::Core" for configuration "Debug"
set_property(TARGET ParaViewIncubator::Core APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ParaViewIncubator::Core PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/vtkPVIncubatorCore-pv5.13d.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/vtkPVIncubatorCore-pv5.13d.dll"
  )

list(APPEND _cmake_import_check_targets ParaViewIncubator::Core )
list(APPEND _cmake_import_check_files_for_ParaViewIncubator::Core "${_IMPORT_PREFIX}/lib/vtkPVIncubatorCore-pv5.13d.lib" "${_IMPORT_PREFIX}/bin/vtkPVIncubatorCore-pv5.13d.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
