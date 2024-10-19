#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LagrangianParticleTracker::vtkLagrangianParticleTracker" for configuration "Debug"
set_property(TARGET LagrangianParticleTracker::vtkLagrangianParticleTracker APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(LagrangianParticleTracker::vtkLagrangianParticleTracker PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LagrangianParticleTracker/vtkLagrangianParticleTrackerd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonDataModel;VTK::FiltersFlowPaths"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LagrangianParticleTracker/vtkLagrangianParticleTrackerd.dll"
  )

list(APPEND _cmake_import_check_targets LagrangianParticleTracker::vtkLagrangianParticleTracker )
list(APPEND _cmake_import_check_files_for_LagrangianParticleTracker::vtkLagrangianParticleTracker "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LagrangianParticleTracker/vtkLagrangianParticleTrackerd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/LagrangianParticleTracker/vtkLagrangianParticleTrackerd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
