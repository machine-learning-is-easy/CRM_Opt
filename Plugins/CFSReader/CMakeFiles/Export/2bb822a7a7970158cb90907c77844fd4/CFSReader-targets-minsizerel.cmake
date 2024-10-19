#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "CFSReader::Reader" for configuration "MinSizeRel"
set_property(TARGET CFSReader::Reader APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(CFSReader::Reader PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReader.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::vtksys"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReader.dll"
  )

list(APPEND _cmake_import_check_targets CFSReader::Reader )
list(APPEND _cmake_import_check_files_for_CFSReader::Reader "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReader.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/CFSReader/vtkCFSReader.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
