#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Prism::vtkPrismFilters" for configuration "Debug"
set_property(TARGET Prism::vtkPrismFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Prism::vtkPrismFilters PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFiltersd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersGeneral;VTK::fmt"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFiltersd.dll"
  )

list(APPEND _cmake_import_check_targets Prism::vtkPrismFilters )
list(APPEND _cmake_import_check_files_for_Prism::vtkPrismFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFiltersd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismFiltersd.dll" )

# Import target "Prism::vtkPrismViews" for configuration "Debug"
set_property(TARGET Prism::vtkPrismViews APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Prism::vtkPrismViews PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViewsd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ParaView::RemotingCore;Prism::vtkPrismFilters;VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersExtraction;VTK::FiltersGeometry"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViewsd.dll"
  )

list(APPEND _cmake_import_check_targets Prism::vtkPrismViews )
list(APPEND _cmake_import_check_files_for_Prism::vtkPrismViews "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViewsd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismViewsd.dll" )

# Import target "Prism::vtkPrismServerManager" for configuration "Debug"
set_property(TARGET Prism::vtkPrismServerManager APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Prism::vtkPrismServerManager PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManagerd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ParaView::RemotingCore;VTK::CommonCore;VTK::CommonDataModel"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManagerd.dll"
  )

list(APPEND _cmake_import_check_targets Prism::vtkPrismServerManager )
list(APPEND _cmake_import_check_files_for_Prism::vtkPrismServerManager "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManagerd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismServerManagerd.dll" )

# Import target "Prism::vtkPrismReaders" for configuration "Debug"
set_property(TARGET Prism::vtkPrismReaders APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Prism::vtkPrismReaders PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReadersd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonMisc;VTK::FiltersGeometry"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReadersd.dll"
  )

list(APPEND _cmake_import_check_targets Prism::vtkPrismReaders )
list(APPEND _cmake_import_check_files_for_Prism::vtkPrismReaders "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReadersd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Prism/vtkPrismReadersd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
