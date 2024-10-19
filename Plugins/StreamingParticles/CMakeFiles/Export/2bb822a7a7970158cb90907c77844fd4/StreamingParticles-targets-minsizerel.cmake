#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "StreamingParticles::vtkStreamingParticles" for configuration "MinSizeRel"
set_property(TARGET StreamingParticles::vtkStreamingParticles APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(StreamingParticles::vtkStreamingParticles PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "VTK::FiltersCore;VTK::ParallelCore;VTK::RenderingCore;VTK::RenderingOpenGL2"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.dll"
  )

list(APPEND _cmake_import_check_targets StreamingParticles::vtkStreamingParticles )
list(APPEND _cmake_import_check_files_for_StreamingParticles::vtkStreamingParticles "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticles.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
