#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CFSReader::Reader" for configuration "Debug"
set_property(TARGET CFSReader::Reader APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(CFSReader::Reader PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReaderd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::vtksys"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReaderd.dll"
  )

list(APPEND _cmake_import_check_targets CFSReader::Reader )
list(APPEND _cmake_import_check_files_for_CFSReader::Reader "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReaderd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReaderd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
