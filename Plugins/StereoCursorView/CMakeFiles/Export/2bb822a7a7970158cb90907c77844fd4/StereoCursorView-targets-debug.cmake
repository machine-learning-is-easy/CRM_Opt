#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "StereoCursorView::StereoCursorViews" for configuration "Debug"
set_property(TARGET StereoCursorView::StereoCursorViews APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(StereoCursorView::StereoCursorViews PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViewsd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::InteractionWidgets;VTK::RenderingCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViewsd.dll"
  )

list(APPEND _cmake_import_check_targets StereoCursorView::StereoCursorViews )
list(APPEND _cmake_import_check_files_for_StereoCursorView::StereoCursorViews "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViewsd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViewsd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
