#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GeodesicMeasurement::GeodesicMeasurementFilters" for configuration "Debug"
set_property(TARGET GeodesicMeasurement::GeodesicMeasurementFilters APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GeodesicMeasurement::GeodesicMeasurementFilters PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/vtkGeodesicMeasurementFiltersd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersModeling"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/vtkGeodesicMeasurementFiltersd.dll"
  )

list(APPEND _cmake_import_check_targets GeodesicMeasurement::GeodesicMeasurementFilters )
list(APPEND _cmake_import_check_files_for_GeodesicMeasurement::GeodesicMeasurementFilters "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/vtkGeodesicMeasurementFiltersd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/vtkGeodesicMeasurementFiltersd.dll" )

# Import target "GeodesicMeasurement::FmmMesh" for configuration "Debug"
set_property(TARGET GeodesicMeasurement::FmmMesh APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GeodesicMeasurement::FmmMesh PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/FmmMeshd.lib"
  )

list(APPEND _cmake_import_check_targets GeodesicMeasurement::FmmMesh )
list(APPEND _cmake_import_check_files_for_GeodesicMeasurement::FmmMesh "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/GeodesicMeasurement/FmmMeshd.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
