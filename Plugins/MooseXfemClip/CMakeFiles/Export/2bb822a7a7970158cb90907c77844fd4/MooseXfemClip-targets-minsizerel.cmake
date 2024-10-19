#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MooseXfemClip::vtkMooseXfemClip" for configuration "MinSizeRel"
set_property(TARGET MooseXfemClip::vtkMooseXfemClip APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(MooseXfemClip::vtkMooseXfemClip PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/MooseXfemClip/vtkMooseXfemClip.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::CommonCore;VTK::CommonDataModel"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/MooseXfemClip/vtkMooseXfemClip.dll"
  )

list(APPEND _cmake_import_check_targets MooseXfemClip::vtkMooseXfemClip )
list(APPEND _cmake_import_check_files_for_MooseXfemClip::vtkMooseXfemClip "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/MooseXfemClip/vtkMooseXfemClip.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/MooseXfemClip/vtkMooseXfemClip.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
