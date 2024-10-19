#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "StereoCursorView::StereoCursorViews" for configuration "MinSizeRel"
set_property(TARGET StereoCursorView::StereoCursorViews APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(StereoCursorView::StereoCursorViews PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViews.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::InteractionWidgets;VTK::RenderingCore"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViews.dll"
  )

list(APPEND _cmake_import_check_targets StereoCursorView::StereoCursorViews )
list(APPEND _cmake_import_check_files_for_StereoCursorView::StereoCursorViews "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViews.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StereoCursorView/StereoCursorViews.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
