#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ExplicitStructuredGrid::vtkExplicitStructuredGrid" for configuration "Debug"
set_property(TARGET ExplicitStructuredGrid::vtkExplicitStructuredGrid APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ExplicitStructuredGrid::vtkExplicitStructuredGrid PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ExplicitStructuredGrid/vtkExplicitStructuredGridd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonDataModel;VTK::CommonCore;VTK::ParallelCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ExplicitStructuredGrid/vtkExplicitStructuredGridd.dll"
  )

list(APPEND _cmake_import_check_targets ExplicitStructuredGrid::vtkExplicitStructuredGrid )
list(APPEND _cmake_import_check_files_for_ExplicitStructuredGrid::vtkExplicitStructuredGrid "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ExplicitStructuredGrid/vtkExplicitStructuredGridd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ExplicitStructuredGrid/vtkExplicitStructuredGridd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
