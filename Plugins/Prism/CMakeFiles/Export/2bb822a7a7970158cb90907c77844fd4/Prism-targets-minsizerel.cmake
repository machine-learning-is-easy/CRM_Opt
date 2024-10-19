#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Prism::vtkPrismFilters" for configuration "MinSizeRel"
set_property(TARGET Prism::vtkPrismFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(Prism::vtkPrismFilters PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFilters.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersGeneral;VTK::fmt"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFilters.dll"
  )

list(APPEND _cmake_import_check_targets Prism::vtkPrismFilters )
list(APPEND _cmake_import_check_files_for_Prism::vtkPrismFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFilters.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFilters.dll" )

# Import target "Prism::vtkPrismViews" for configuration "MinSizeRel"
set_property(TARGET Prism::vtkPrismViews APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(Prism::vtkPrismViews PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViews.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "ParaView::RemotingCore;Prism::vtkPrismFilters;VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersExtraction;VTK::FiltersGeometry"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViews.dll"
  )

list(APPEND _cmake_import_check_targets Prism::vtkPrismViews )
list(APPEND _cmake_import_check_files_for_Prism::vtkPrismViews "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViews.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViews.dll" )

# Import target "Prism::vtkPrismServerManager" for configuration "MinSizeRel"
set_property(TARGET Prism::vtkPrismServerManager APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(Prism::vtkPrismServerManager PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManager.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "ParaView::RemotingCore;VTK::CommonCore;VTK::CommonDataModel"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManager.dll"
  )

list(APPEND _cmake_import_check_targets Prism::vtkPrismServerManager )
list(APPEND _cmake_import_check_files_for_Prism::vtkPrismServerManager "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManager.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManager.dll" )

# Import target "Prism::vtkPrismReaders" for configuration "MinSizeRel"
set_property(TARGET Prism::vtkPrismReaders APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(Prism::vtkPrismReaders PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReaders.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMisc;VTK::FiltersGeometry"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReaders.dll"
  )

list(APPEND _cmake_import_check_targets Prism::vtkPrismReaders )
list(APPEND _cmake_import_check_files_for_Prism::vtkPrismReaders "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReaders.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReaders.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
