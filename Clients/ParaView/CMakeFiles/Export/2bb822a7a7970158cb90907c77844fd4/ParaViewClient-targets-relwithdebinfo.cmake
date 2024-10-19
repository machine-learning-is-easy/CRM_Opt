#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ParaView::paraview" for configuration "RelWithDebInfo"
set_property(TARGET ParaView::paraview APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(ParaView::paraview PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/bin/paraview.exe"
  )

list(APPEND _cmake_import_check_targets ParaView::paraview )
list(APPEND _cmake_import_check_files_for_ParaView::paraview "${_IMPORT_PREFIX}/bin/paraview.exe" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
