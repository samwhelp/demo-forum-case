#!/usr/bin/env bash


THE_PRJ_NAME="fcitx5-mcbopomofo"


mkdir -p "var/src/${THE_PRJ_NAME}/build"


cd "var/src/${THE_PRJ_NAME}/build"


sudo make DESTDIR="$(pwd)/pkg-root" install

echo
echo "ls -1 var/src/${THE_PRJ_NAME}/build/pkg-root"
echo
echo "tree var/src/${THE_PRJ_NAME}/build/pkg-root"
echo

cd "$OLDPWD"


