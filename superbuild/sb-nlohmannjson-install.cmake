# Handle the environment when running a primary step (configure, build,
# install) of a project.

set(environment "PATH;D:/pv/pvsb/install/bin;PKG_CONFIG_PATH;;PYTHONPATH;D:/pv/pvsb/install/Python/Lib/site-packages")
set(list_separator "-+-")
set(command "C:/Program Files/CMake/bin/cmake.exe;--build;.;--target;install")

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
