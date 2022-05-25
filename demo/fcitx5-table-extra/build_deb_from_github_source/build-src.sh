#!/usr/bin/env bash


SRC_ROOT="fcitx5-table-extra"


mkdir "var/src/$SRC_ROOT/build"


cd "var/src/$SRC_ROOT/build"

cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=/usr/lib ..

make

make DESTDIR="$(pwd)/pkg-root" install


cd "$OLDPWD"
