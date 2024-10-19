#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "StreamLinesRepresentation::vtkStreamLines" for configuration "Debug"
set_property(TARGET StreamLinesRepresentation::vtkStreamLines APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(StreamLinesRepresentation::vtkStreamLines PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamLinesRepresentation/vtkStreamLinesd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ParaView::VTKExtensionsFiltersRendering;VTK::CommonDataModel;VTK::CommonExecutionModel;VTK::CommonMath;VTK::CommonTransforms;VTK::RenderingOpenGL2;VTK::glew"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamLinesRepresentation/vtkStreamLinesd.dll"
  )

list(APPEND _cmake_import_check_targets StreamLinesRepresentation::vtkStreamLines )
list(APPEND _cmake_import_check_files_for_StreamLinesRepresentation::vtkStreamLines "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamLinesRepresentation/vtkStreamLinesd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamLinesRepresentation/vtkStreamLinesd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
