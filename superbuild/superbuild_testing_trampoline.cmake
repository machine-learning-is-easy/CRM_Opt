# WARNING: Magic happening here.
#
# We are overriding the built-in ``subdirs`` functionality because it doesn't
# handle this use case well.
function (subdirs subdir)
  if (implicit_root)
    set(old_implicit_root "${implicit_root}")
    set(implicit_root "${implicit_root}${subdir}/")
  endif ()
  _subdirs("${old_implicit_root}${subdir}")
endfunction ()

set(extra_ctest_dirs "")
foreach (extra_ctest_dir IN LISTS extra_ctest_dirs)
  if (EXISTS "${extra_ctest_dir}/CTestTestfile.cmake")
    set(implicit_root "${extra_ctest_dir}/")
    include("${extra_ctest_dir}/CTestTestfile.cmake")
  endif ()
endforeach ()
set(implicit_root)
