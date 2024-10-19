#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "BivariateRepresentations::vtkBivariateRepresentations" for configuration "Debug"
set_property(TARGET BivariateRepresentations::vtkBivariateRepresentations APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(BivariateRepresentations::vtkBivariateRepresentations PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BivariateRepresentations/vtkBivariateRepresentationsd.lib"
  )

list(APPEND _cmake_import_check_targets BivariateRepresentations::vtkBivariateRepresentations )
list(APPEND _cmake_import_check_files_for_BivariateRepresentations::vtkBivariateRepresentations "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BivariateRepresentations/vtkBivariateRepresentationsd.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
