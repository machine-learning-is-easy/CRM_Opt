#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "NonOrthogonalSource::vtkNonOrthogonalSources" for configuration "Debug"
set_property(TARGET NonOrthogonalSource::vtkNonOrthogonalSources APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(NonOrthogonalSource::vtkNonOrthogonalSources PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/NonOrthogonalSource/vtkNonOrthogonalSourcesd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ParaView::VTKExtensionsMisc;VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMath;VTK::CommonTransforms;VTK::FiltersGeneral;VTK::ImagingCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/NonOrthogonalSource/vtkNonOrthogonalSourcesd.dll"
  )

list(APPEND _cmake_import_check_targets NonOrthogonalSource::vtkNonOrthogonalSources )
list(APPEND _cmake_import_check_files_for_NonOrthogonalSource::vtkNonOrthogonalSources "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/NonOrthogonalSource/vtkNonOrthogonalSourcesd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/NonOrthogonalSource/vtkNonOrthogonalSourcesd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
