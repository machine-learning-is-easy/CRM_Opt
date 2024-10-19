#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ParaView::Catalyst" for configuration "RelWithDebInfo"
set_property(TARGET ParaView::Catalyst APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ParaView::Catalyst PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/vtkPVCatalyst-pv5.13.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ParaView::RemotingApplication;VTK::FiltersGeneral;VTK::FiltersHybrid;VTK::vtksys"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/vtkPVCatalyst-pv5.13.dll"
  )

list(APPEND _cmake_import_check_targets ParaView::Catalyst )
list(APPEND _cmake_import_check_files_for_ParaView::Catalyst "${_IMPORT_PREFIX}/lib/vtkPVCatalyst-pv5.13.lib" "${_IMPORT_PREFIX}/bin/vtkPVCatalyst-pv5.13.dll" )

# Import target "ParaView::InSitu" for configuration "RelWithDebInfo"
set_property(TARGET ParaView::InSitu APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ParaView::InSitu PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/vtkPVInSitu-pv5.13.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELWITHDEBINFO "ParaView::Catalyst;ParaView::RemotingApplication;ParaView::RemotingLive;ParaView::VTKExtensionsCore"
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/vtkPVInSitu-pv5.13.dll"
  )

list(APPEND _cmake_import_check_targets ParaView::InSitu )
list(APPEND _cmake_import_check_files_for_ParaView::InSitu "${_IMPORT_PREFIX}/lib/vtkPVInSitu-pv5.13.lib" "${_IMPORT_PREFIX}/bin/vtkPVInSitu-pv5.13.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
