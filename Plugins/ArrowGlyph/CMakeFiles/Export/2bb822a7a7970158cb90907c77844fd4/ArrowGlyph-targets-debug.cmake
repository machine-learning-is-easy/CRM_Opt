#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ArrowGlyph::ArrowGlyphFilter" for configuration "Debug"
set_property(TARGET ArrowGlyph::ArrowGlyphFilter APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ArrowGlyph::ArrowGlyphFilter PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ArrowGlyph/vtkArrowGlyphFilterd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "ParaView::RemotingCore;VTK::CommonDataModel;VTK::FiltersCore;VTK::FiltersSources"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ArrowGlyph/vtkArrowGlyphFilterd.dll"
  )

list(APPEND _cmake_import_check_targets ArrowGlyph::ArrowGlyphFilter )
list(APPEND _cmake_import_check_files_for_ArrowGlyph::ArrowGlyphFilter "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ArrowGlyph/vtkArrowGlyphFilterd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/ArrowGlyph/vtkArrowGlyphFilterd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
