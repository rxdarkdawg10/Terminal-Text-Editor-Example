#!/bin/sh

set -xe
CC="${CXX:-cc}"
PKG=""
CFLAGS="-Wall -Wextra -std=c11 -ggdb"
LIBS=-lm
SRC="src/main.c"

if [ `uname` = "Darwin" ]; then
    CFLAGS+=" -framework OpenGL"
fi
$CC $CFLAGS `pkg-config --cflags $PKG` -o app01 $SRC $LIBS `pkg-config --libs $PKG`