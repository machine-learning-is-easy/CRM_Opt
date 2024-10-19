#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "DigitalSignalProcessing::DSPDataModel" for configuration "Debug"
set_property(TARGET DigitalSignalProcessing::DSPDataModel APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(DigitalSignalProcessing::DSPDataModel PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalSignalProcessing/vtkDSPDataModeld.lib"
  )

list(APPEND _cmake_import_check_targets DigitalSignalProcessing::DSPDataModel )
list(APPEND _cmake_import_check_files_for_DigitalSignalProcessing::DSPDataModel "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalSignalProcessing/vtkDSPDataModeld.lib" )

# Import target "DigitalSignalProcessing::DSPFiltersPlugin" for configuration "Debug"
set_property(TARGET DigitalSignalProcessing::DSPFiltersPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(DigitalSignalProcessing::DSPFiltersPlugin PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalSignalProcessing/vtkDSPFiltersPlugind.lib"
  )

list(APPEND _cmake_import_check_targets DigitalSignalProcessing::DSPFiltersPlugin )
list(APPEND _cmake_import_check_files_for_DigitalSignalProcessing::DSPFiltersPlugin "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/DigitalSignalProcessing/vtkDSPFiltersPlugind.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
