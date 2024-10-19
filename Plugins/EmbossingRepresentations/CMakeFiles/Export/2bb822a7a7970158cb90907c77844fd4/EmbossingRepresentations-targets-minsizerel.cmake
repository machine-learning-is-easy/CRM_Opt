#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "EmbossingRepresentations::vtkEmbossingRepresentations" for configuration "MinSizeRel"
set_property(TARGET EmbossingRepresentations::vtkEmbossingRepresentations APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(EmbossingRepresentations::vtkEmbossingRepresentations PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations/vtkEmbossingRepresentations.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::ParallelCore;VTK::RenderingCore;VTK::glew"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations/vtkEmbossingRepresentations.dll"
  )

list(APPEND _cmake_import_check_targets EmbossingRepresentations::vtkEmbossingRepresentations )
list(APPEND _cmake_import_check_files_for_EmbossingRepresentations::vtkEmbossingRepresentations "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations/vtkEmbossingRepresentations.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/EmbossingRepresentations/vtkEmbossingRepresentations.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
