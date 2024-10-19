#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "BivariateRepresentations::vtkBivariateRepresentations" for configuration "Release"
set_property(TARGET BivariateRepresentations::vtkBivariateRepresentations APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(BivariateRepresentations::vtkBivariateRepresentations PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BivariateRepresentations/vtkBivariateRepresentations.lib"
  )

list(APPEND _cmake_import_check_targets BivariateRepresentations::vtkBivariateRepresentations )
list(APPEND _cmake_import_check_files_for_BivariateRepresentations::vtkBivariateRepresentations "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/BivariateRepresentations/vtkBivariateRepresentations.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
