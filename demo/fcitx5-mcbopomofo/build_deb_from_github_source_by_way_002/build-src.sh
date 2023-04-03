#!/usr/bin/env bash


THE_PRJ_NAME="fcitx5-mcbopomofo"


mkdir -p "var/src/${THE_PRJ_NAME}/build"




cd "var/src/${THE_PRJ_NAME}/build"

cmake ../ -DCMAKE_INSTALL_PREFIX=/usr

make

sudo make DESTDIR="$(pwd)/pkg-root" install

cd "${OLDPWD}"
