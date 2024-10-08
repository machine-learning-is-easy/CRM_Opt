#[==[.md
# `CTestCustom.cmake`

This is a trampoline CTest custom file which includes any other
`CTestCustom.cmake` files provided by a superbuild.
#]==]

# INTERNAL
# Sets up CTest's variables to ignore messages from a project.
function (_project_ignore_regexes variable project)
  set(exceptions)
  list(APPEND exceptions
    "${project}/src"
    "${project}\\\\src")
  string(TOLOWER "${project}" lower_project)
  if ((APPLE OR WIN32) AND (NOT lower_project STREQUAL project))
    if (WIN32)
      list(APPEND exceptions
        "${lower_project}\\\\src")
    endif ()
    list(APPEND exceptions
      "${lower_project}/src")
  endif ()

  set("${variable}"
    ${${variable}}
    ${exceptions}
    PARENT_SCOPE)
endfunction ()

#[==[.md
## Ignoring project outputs

Since superbuilds build many third party projects, it can be useful to ignore
all warnings and errors coming from a project. Note that these only suppress
from appearing on CDash. To completely silence a project even when building
interactively, it is better to use `SUPPRESS_<project>_OUTPUT` variables.

Real errors will still fail the build, but output of configure-time failures
will not show up in CDash.

```
ignore_project_warnings(<project>)
ignore_project_errors(<project>)
```
#]==]

macro (ignore_project_warnings project)
  _project_ignore_regexes(CTEST_CUSTOM_WARNING_EXCEPTION "${project}")
endmacro ()

macro (ignore_project_errors project)
  _project_ignore_regexes(CTEST_CUSTOM_ERROR_EXCEPTION "${project}")
endmacro ()

# szip is very noisy.
ignore_project_warnings(szip)

# Include project-specified files.
set(extra_ctest_custom_files "D:/pv/paraview-superbuild/cmake/CTestCustom.cmake")
foreach (extra_ctest_custom_file IN LISTS extra_ctest_custom_files)
  include("${extra_ctest_custom_file}")
endforeach ()
