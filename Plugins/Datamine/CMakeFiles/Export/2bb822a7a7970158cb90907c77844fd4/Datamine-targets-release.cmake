#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Datamine::DatamineReaders" for configuration "Release"
set_property(TARGET Datamine::DatamineReaders APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Datamine::DatamineReaders PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Datamine/vtkDatamineReaders.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_RELEASE "VTK::CommonCore;VTK::CommonDataModel;VTK::CommonTransforms;VTK::FiltersCore"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Datamine/vtkDatamineReaders.dll"
  )

list(APPEND _cmake_import_check_targets Datamine::DatamineReaders )
list(APPEND _cmake_import_check_files_for_Datamine::DatamineReaders "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Datamine/vtkDatamineReaders.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/Datamine/vtkDatamineReaders.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
