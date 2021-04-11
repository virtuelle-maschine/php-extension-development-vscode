dnl config.m4 for extension ext_skeleton_name

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary.

dnl If your extension references something external, use 'with':

dnl PHP_ARG_WITH([ext_skeleton_name],
dnl   [for ext_skeleton_name support],
dnl   [AS_HELP_STRING([--with-ext_skeleton_name],
dnl     [Include ext_skeleton_name support])])

dnl Otherwise use 'enable':

PHP_ARG_ENABLE(
  [ext_skeleton_name],
  [whether to enable ext_skeleton_name support],
  [AS_HELP_STRING([--enable-ext_skeleton_name],[Enable ext_skeleton_name support])],
  [no]
)

if test "$PHP_EXT_SKELETON_NAME" != "no"; then
  dnl Write more examples of tests here...

  dnl Remove this code block if the library does _not_ support pkg-config.
  dnl PKG_CHECK_MODULES([LIBFOO], [foo])
  dnl PHP_EVAL_INCLINE($LIBFOO_CFLAGS)
  dnl PHP_EVAL_LIBLINE($LIBFOO_LIBS, EXT_SKELETON_NAME_SHARED_LIBADD)

  dnl If you need to check for a particular library version using PKG_CHECK_MODULES,
  dnl you can use comparison operators. For example:
  dnl PKG_CHECK_MODULES([LIBFOO], [foo >= 1.2.3])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo < 3.4])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo = 1.2.3])

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-ext_skeleton_name -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/ext_skeleton_name.h"  # you most likely want to change this
  dnl if test -r $PHP_EXT_SKELETON_NAME/$SEARCH_FOR; then # path given as parameter
  dnl   EXT_SKELETON_NAME_DIR=$PHP_EXT_SKELETON_NAME
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for ext_skeleton_name files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       EXT_SKELETON_NAME_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$EXT_SKELETON_NAME_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the ext_skeleton_name distribution])
  dnl fi

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-ext_skeleton_name -> add include path
  dnl PHP_ADD_INCLUDE($EXT_SKELETON_NAME_DIR/include)

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-ext_skeleton_name -> check for lib and symbol presence
  dnl LIBNAME=EXT_SKELETON_NAME # you may want to change this
  dnl LIBSYMBOL=EXT_SKELETON_NAME # you most likely want to change this

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   AC_DEFINE(HAVE_EXT_SKELETON_NAME_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your ext_skeleton_name library.])
  dnl ], [
  dnl   $LIBFOO_LIBS
  dnl ])

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are not using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $EXT_SKELETON_NAME_DIR/$PHP_LIBDIR, EXT_SKELETON_NAME_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_EXT_SKELETON_NAME_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your ext_skeleton_name library.])
  dnl ],[
  dnl   -L$EXT_SKELETON_NAME_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(EXT_SKELETON_NAME_SHARED_LIBADD)

  dnl In case of no dependencies
  AC_DEFINE(HAVE_EXT_SKELETON_NAME, 1, [ Have ext_skeleton_name support ])

  // all code-files as 2nd param:
  PHP_NEW_EXTENSION(ext_skeleton_name, ext_skeleton_name.c, $ext_shared)
fi
