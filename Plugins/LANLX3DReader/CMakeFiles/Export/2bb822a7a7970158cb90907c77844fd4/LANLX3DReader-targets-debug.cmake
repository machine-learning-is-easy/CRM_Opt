#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LANLX3DReader::vtkLANLX3DReader" for configuration "Debug"
set_property(TARGET LANLX3DReader::vtkLANLX3DReader APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(LANLX3DReader::vtkLANLX3DReader PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LANLX3DReader/vtkLANLX3DReaderd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LANLX3DReader/vtkLANLX3DReaderd.dll"
  )

list(APPEND _cmake_import_check_targets LANLX3DReader::vtkLANLX3DReader )
list(APPEND _cmake_import_check_files_for_LANLX3DReader::vtkLANLX3DReader "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LANLX3DReader/vtkLANLX3DReaderd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LANLX3DReader/vtkLANLX3DReaderd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
