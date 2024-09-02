# Handle the environment when running a primary step (configure, build,
# install) of a project.

set(environment "PATH;D:/pv/pvsb/install/bin;PKG_CONFIG_PATH;;PYTHONPATH;D:/pv/pvsb/install/Python/Lib/site-packages")
set(list_separator "-+-")
set(command "C:/Program Files/CMake/bin/cmake.exe;-DENABLE_TESTING:BOOL=OFF;-DBUILD_TESTING:BOOL=OFF;-DJSON_BuildTests:BOOL=OFF;-DCMAKE_INSTALL_LIBDIR:STRING=lib;--no-warn-unused-cli;-DCMAKE_INSTALL_PREFIX:PATH=D:/pv/pvsb/install;-DCMAKE_PREFIX_PATH:STRING=D:/pv/pvsb/install;-DCMAKE_C_FLAGS:STRING=/DWIN32 /D_WINDOWS /W3   ;-DCMAKE_CXX_FLAGS:STRING=/DWIN32 /D_WINDOWS /W3 /GR /EHsc    ;-DCMAKE_Fortran_FLAGS:STRING=   ;-DCMAKE_SHARED_LINKER_FLAGS:STRING=/machine:x64   ;-DCMAKE_OSX_DEPLOYMENT_TARGET:STRING=;-DCMAKE_EXPORT_NO_PACKAGE_REGISTRY:BOOL=ON;-DCMAKE_C_COMPILER:STRING=C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/bin/Hostx64/x64/cl.exe;-DCMAKE_CXX_COMPILER:STRING=C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/bin/Hostx64/x64/cl.exe;-DCMAKE_C_FLAGS_DEBUG:STRING=/MDd /Zi /Ob0 /Od /RTC1;-DCMAKE_C_FLAGS_MINSIZEREL:STRING=/MD /O1 /Ob1 /DNDEBUG;-DCMAKE_C_FLAGS_RELEASE:STRING=/MD /O2 /Ob2 /DNDEBUG;-DCMAKE_C_FLAGS_RELWITHDEBINFO:STRING=/MD /Zi /O2 /Ob1 /DNDEBUG;-DCMAKE_CXX_FLAGS_DEBUG:STRING=/MDd /Zi /Ob0 /Od /RTC1;-DCMAKE_CXX_FLAGS_MINSIZEREL:STRING=/MD /O1 /Ob1 /DNDEBUG;-DCMAKE_CXX_FLAGS_RELEASE:STRING=/MD /O2 /Ob2 /DNDEBUG;-DCMAKE_CXX_FLAGS_RELWITHDEBINFO:STRING=/MD /Zi /O2 /Ob1 /DNDEBUG;-DCMAKE_BUILD_TYPE:STRING=Release;-DCMAKE_CXX_STANDARD:STRING=11;-DCMAKE_CXX_STANDARD_REQUIRED:STRING=TRUE;-GNinja;D:/pv/pvsb/superbuild/nlohmannjson/src")

set(env_separator ":")
# These environment variables are prepended to using `env_separator`.
set(prepend_envvars
  PATH CMAKE_PREFIX_PATH PKG_CONFIG_PATH PYTHONPATH)
if (WIN32)
  set(env_separator ";")
elseif (APPLE)
  list(APPEND prepend_envvars
    DYLD_LIBRARY_PATH)
elseif (UNIX)
  list(APPEND prepend_envvars
    LD_LIBRARY_PATH)
endif ()

set(key)
foreach (arg IN LISTS environment)
  if (NOT key)
    set(key "${arg}")
  else ()
    list(FIND prepend_envvars "${key}" index)
    set(value "$ENV{${key}}")
    if (index EQUAL "-1" OR value STREQUAL "")
      set(value "${arg}")
    else ()
      string(PREPEND value "${arg}${env_separator}")
    endif ()
    string(REPLACE "${list_separator}" ";" value "${value}")
    set("ENV{${key}}" "${value}")

    unset(key)
  endif ()
endforeach ()

string(REPLACE "${list_separator}" "\;" command "${command}")

execute_process(
  COMMAND ${command}
  RESULT_VARIABLE rv)

if (rv)
  message(FATAL_ERROR "Failed with exit code ${rv}")
endif ()
