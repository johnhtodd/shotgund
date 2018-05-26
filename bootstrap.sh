#!/bin/sh

aclocal --force \
    && libtoolize --force \
    && autoheader --force \
    && automake --add-missing --force \
    && autoconf --force

echo ''
echo 'Continue building with the usual ./configure ; make ; sudo make install'
