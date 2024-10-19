#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SLACTools::vtkSLACFilters" for configuration "MinSizeRel"
set_property(TARGET SLACTools::vtkSLACFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(SLACTools::vtkSLACFilters PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/SLACTools/vtkSLACFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "ParaView::VTKExtensionsCore;ParaView::VTKExtensionsMisc;VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersSources;VTK::ParallelCore"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/SLACTools/vtkSLACFilters.dll"
  )

list(APPEND _cmake_import_check_targets SLACTools::vtkSLACFilters )
list(APPEND _cmake_import_check_files_for_SLACTools::vtkSLACFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/SLACTools/vtkSLACFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/SLACTools/vtkSLACFilters.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
