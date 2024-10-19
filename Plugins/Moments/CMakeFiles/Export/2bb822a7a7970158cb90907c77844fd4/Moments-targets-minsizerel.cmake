#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Moments::MomentFilters" for configuration "MinSizeRel"
set_property(TARGET Moments::MomentFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(Moments::MomentFilters PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Moments/vtkMomentFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonTransforms;VTK::FiltersCore;VTK::FiltersGeneral;VTK::FiltersSources"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Moments/vtkMomentFilters.dll"
  )

list(APPEND _cmake_import_check_targets Moments::MomentFilters )
list(APPEND _cmake_import_check_files_for_Moments::MomentFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Moments/vtkMomentFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Moments/vtkMomentFilters.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
