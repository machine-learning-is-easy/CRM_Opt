#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ParaView::Catalyst" for configuration "Debug"
set_property(TARGET ParaView::Catalyst APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ParaView::Catalyst PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/vtkPVCatalyst-pv5.13d.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ParaView::RemotingApplication;VTK::FiltersGeneral;VTK::FiltersHybrid;VTK::vtksys"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/vtkPVCatalyst-pv5.13d.dll"
  )

list(APPEND _cmake_import_check_targets ParaView::Catalyst )
list(APPEND _cmake_import_check_files_for_ParaView::Catalyst "${_IMPORT_PREFIX}/lib/vtkPVCatalyst-pv5.13d.lib" "${_IMPORT_PREFIX}/bin/vtkPVCatalyst-pv5.13d.dll" )

# Import target "ParaView::InSitu" for configuration "Debug"
set_property(TARGET ParaView::InSitu APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ParaView::InSitu PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/vtkPVInSitu-pv5.13d.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ParaView::Catalyst;ParaView::RemotingApplication;ParaView::RemotingLive;ParaView::VTKExtensionsCore"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/vtkPVInSitu-pv5.13d.dll"
  )

list(APPEND _cmake_import_check_targets ParaView::InSitu )
list(APPEND _cmake_import_check_files_for_ParaView::InSitu "${_IMPORT_PREFIX}/lib/vtkPVInSitu-pv5.13d.lib" "${_IMPORT_PREFIX}/bin/vtkPVInSitu-pv5.13d.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
