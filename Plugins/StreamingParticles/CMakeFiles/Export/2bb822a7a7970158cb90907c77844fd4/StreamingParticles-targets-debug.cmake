#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "StreamingParticles::vtkStreamingParticles" for configuration "Debug"
set_property(TARGET StreamingParticles::vtkStreamingParticles APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(StreamingParticles::vtkStreamingParticles PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticlesd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::FiltersCore;VTK::ParallelCore;VTK::RenderingCore;VTK::RenderingOpenGL2"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticlesd.dll"
  )

list(APPEND _cmake_import_check_targets StreamingParticles::vtkStreamingParticles )
list(APPEND _cmake_import_check_files_for_StreamingParticles::vtkStreamingParticles "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticlesd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/StreamingParticles/vtkStreamingParticlesd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
