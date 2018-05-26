Shotgund - A Parallelizing, domain-rewriting DNS shim proxy

INSTALL
=======

To build this package you will need autotools installed, as well
as the usual compiler dependencies. In Debian/Ubuntu, these
dependencies can be satisfied by running.

    sudo apt install build-essential libtool autoconf

You can then build this package by executing autoconf to generate
system-specific build scripts, and doing the usual configure; make
routine.

    ./bootstrap.sh

    ./configure

    make

    sudo make install

This will build shotgund as a binary in the ./src/ directory, and
install it to /usr/local/sbin by default. You can modify the default
compilation settings with the generic instructions for autoconf configure
scripts. You can find more info in ./INSTALL (after running bootstrap.sh).
