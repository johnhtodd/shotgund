AC_PREREQ([2.56])
AC_INIT([shotgund], [1.1.8], [oleksiy@kharkiv.com.ua])

AC_CONFIG_SRCDIR([lib])
AC_CONFIG_HEADER([lib/config.h])

AC_PROG_LIBTOOL

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
AC_PROG_RANLIB

# Checks for libraries.
AC_CHECK_LIB([c_r], [pthread_create])
AC_CHECK_LIB([pthread], [pthread_create])

# Checks for header files.
AC_HEADER_STDC
AC_CHECK_HEADERS([arpa/inet.h fcntl.h malloc.h netinet/in.h stdlib.h string.h sys/socket.h sys/time.h unistd.h net/ppp_defs.h net/if_ppp.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_C_CONST
AC_C_INLINE
AC_TYPE_SIZE_T

# Checks for library functions.
AC_FUNC_ALLOCA
AC_FUNC_ERROR_AT_LINE
AC_FUNC_MALLOC
AC_FUNC_REALLOC
AC_FUNC_VPRINTF
AC_CHECK_FUNCS([inet_ntoa memset socket strcasecmp strdup strerror])

AC_MSG_CHECKING([whether to enable crippled version])
AC_ARG_ENABLE(crippled,
[  --enable-crippled     Compile 'crippled' version of shotgund.], [
    CRIPPLED=$enableval
],[
   CRIPPLED=no
])
AC_MSG_RESULT([$CRIPPLED])

if test "x$CRIPPLED" != "xno"
then
    CXXFLAGS="${CXXFLAGS} -DCRIPPLED=1"
fi

dnl Check for IPv6 support

AC_MSG_CHECKING([for IPv6 support])

AC_ARG_ENABLE(ipv6, [ --enable-ipv6 enables ipv6 support],
[AC_RUN_IFELSE(
    AC_LANG_SOURCE([
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

struct sockaddr_in6 s6;

int main() {
    if(socket(PF_INET6, SOCK_DGRAM, 0) == -1){
        return 1;
    }
    return 0;
}]),
    AC_MSG_RESULT(yes)
    AC_DEFINE([HAVE_IPV6], [1], [is IPv6 support enabled]),
    AC_MSG_RESULT(no),
    AC_MSG_RESULT(cross_compiling)
)],[AC_MSG_RESULT(no)])

# Compiler features options
CXXFLAGS="${CXXFLAGS} -fno-exceptions"
# Optimization options
CXXFLAGS="${CXXFLAGS} -O0 -fomit-frame-pointer -fexpensive-optimizations"
# Compiling options
CXXFLAGS="${CXXFLAGS} -pipe"
# Warning options
CXXFLAGS="${CXXFLAGS} -Werror -Wall -Winline"
#
CXXFLAGS="${CXXFLAGS} -D_REENTRANT -D_THREAD_SAFE"

# All is same for C
CFLAGS=$CXXFLAGS


AC_CONFIG_FILES([Makefile
                 lib/Makefile
                 lib/dotconf++/Makefile
                 src/Makefile])

AM_INIT_AUTOMAKE([subdir-objects])

AM_PROG_AR

AC_OUTPUT
