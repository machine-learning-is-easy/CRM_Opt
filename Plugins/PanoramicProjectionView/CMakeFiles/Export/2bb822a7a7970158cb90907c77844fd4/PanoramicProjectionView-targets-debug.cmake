#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PanoramicProjectionView::vtkPanoramicProjectionViews" for configuration "Debug"
set_property(TARGET PanoramicProjectionView::vtkPanoramicProjectionViews APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(PanoramicProjectionView::vtkPanoramicProjectionViews PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/PanoramicProjectionView/vtkPanoramicProjectionViewsd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::RenderingCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/PanoramicProjectionView/vtkPanoramicProjectionViewsd.dll"
  )

list(APPEND _cmake_import_check_targets PanoramicProjectionView::vtkPanoramicProjectionViews )
list(APPEND _cmake_import_check_files_for_PanoramicProjectionView::vtkPanoramicProjectionViews "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/PanoramicProjectionView/vtkPanoramicProjectionViewsd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/PanoramicProjectionView/vtkPanoramicProjectionViewsd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
