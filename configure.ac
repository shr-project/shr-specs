##############################################################################
# init
AC_INIT([shr-specs], [2011.03.08.2], [shr-devel@lists.shr-project.org], [shr-specs])
AC_CONFIG_SRCDIR([tools/rules.mk])
AM_INIT_AUTOMAKE([-Wall -Werror foreign no-dist-gzip dist-bzip2])
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

##############################################################################
# xlst is necessary for specs generation
AC_PATH_PROG(XSLTPROC, xsltproc, no)
AC_SUBST(XSLTPROC)
if test $XSLTPROC = "no"; then
    AC_MSG_ERROR([xsltproc is mandatory for this package])
fi

##############################################################################
# python is mandatory for docs generation
AC_PATH_PROG(PYTHON, python, no)
AC_SUBST(PYTHON)
if test $PYTHON = "no"; then
    AC_MSG_ERROR([python is mandatory for this package])
fi

##############################################################################
# output
AC_CONFIG_FILES([
        Makefile
        shr-specs.pc
])
AC_OUTPUT
echo
echo
echo
echo "shr-specs configured successfully."
echo
echo "Now type 'make' to compile and 'make install' to install this package."
