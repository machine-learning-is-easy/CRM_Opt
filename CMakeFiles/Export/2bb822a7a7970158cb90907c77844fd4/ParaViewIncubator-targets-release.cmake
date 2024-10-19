#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ParaViewIncubator::Core" for configuration "Release"
set_property(TARGET ParaViewIncubator::Core APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ParaViewIncubator::Core PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/vtkPVIncubatorCore-pv5.13.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/vtkPVIncubatorCore-pv5.13.dll"
  )

list(APPEND _cmake_import_check_targets ParaViewIncubator::Core )
list(APPEND _cmake_import_check_files_for_ParaViewIncubator::Core "${_IMPORT_PREFIX}/lib/vtkPVIncubatorCore-pv5.13.lib" "${_IMPORT_PREFIX}/bin/vtkPVIncubatorCore-pv5.13.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
