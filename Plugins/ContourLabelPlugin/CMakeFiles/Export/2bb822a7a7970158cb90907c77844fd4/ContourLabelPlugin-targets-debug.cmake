#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ContourLabelRepresentation::ContourLabelRepresentation" for configuration "Debug"
set_property(TARGET ContourLabelRepresentation::ContourLabelRepresentation APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ContourLabelRepresentation::ContourLabelRepresentation PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ContourLabelPlugin/vtkContourLabelPlugind.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::ParallelCore;VTK::RenderingCore;ParaView::VTKExtensionsMisc"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ContourLabelPlugin/vtkContourLabelPlugind.dll"
  )

list(APPEND _cmake_import_check_targets ContourLabelRepresentation::ContourLabelRepresentation )
list(APPEND _cmake_import_check_files_for_ContourLabelRepresentation::ContourLabelRepresentation "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ContourLabelPlugin/vtkContourLabelPlugind.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ContourLabelPlugin/vtkContourLabelPlugind.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
