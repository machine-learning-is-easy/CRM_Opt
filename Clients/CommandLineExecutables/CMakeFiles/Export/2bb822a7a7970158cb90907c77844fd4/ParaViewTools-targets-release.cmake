#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ParaView::pvserver" for configuration "Release"
set_property(TARGET ParaView::pvserver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ParaView::pvserver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pvserver.exe"
  )

list(APPEND _cmake_import_check_targets ParaView::pvserver )
list(APPEND _cmake_import_check_files_for_ParaView::pvserver "${_IMPORT_PREFIX}/bin/pvserver.exe" )

# Import target "ParaView::pvdataserver" for configuration "Release"
set_property(TARGET ParaView::pvdataserver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ParaView::pvdataserver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pvdataserver.exe"
  )

list(APPEND _cmake_import_check_targets ParaView::pvdataserver )
list(APPEND _cmake_import_check_files_for_ParaView::pvdataserver "${_IMPORT_PREFIX}/bin/pvdataserver.exe" )

# Import target "ParaView::pvrenderserver" for configuration "Release"
set_property(TARGET ParaView::pvrenderserver APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(ParaView::pvrenderserver PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pvrenderserver.exe"
  )

list(APPEND _cmake_import_check_targets ParaView::pvrenderserver )
list(APPEND _cmake_import_check_files_for_ParaView::pvrenderserver "${_IMPORT_PREFIX}/bin/pvrenderserver.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
