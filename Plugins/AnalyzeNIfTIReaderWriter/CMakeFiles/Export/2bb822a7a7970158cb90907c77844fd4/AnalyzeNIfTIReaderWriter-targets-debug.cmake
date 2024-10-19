#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "AnalyzeNIfTIIO::NIfTIIO" for configuration "Debug"
set_property(TARGET AnalyzeNIfTIIO::NIfTIIO APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(AnalyzeNIfTIIO::NIfTIIO PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIOd.lib"
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "VTK::CommonCore;VTK::CommonDataModel;VTK::zlib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIOd.dll"
  )

list(APPEND _cmake_import_check_targets AnalyzeNIfTIIO::NIfTIIO )
list(APPEND _cmake_import_check_files_for_AnalyzeNIfTIIO::NIfTIIO "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIOd.lib" "${_IMPORT_PREFIX}/bin/paraview-5.13/plugins/AnalyzeNIfTIReaderWriter/vtkAnalyzeNIfTIIOd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
