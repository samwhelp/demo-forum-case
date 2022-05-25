#!/usr/bin/env bash


SRC_ROOT="fcitx5-table-extra"


mkdir -p "var/src/$SRC_ROOT/build"


cd "var/src/$SRC_ROOT/build"


make DESTDIR="$(pwd)/pkg-root" install

echo
echo "ls -1 var/src/$SRC_ROOT/build/pkg-root"
echo
echo "tree var/src/$SRC_ROOT/build/pkg-root"
echo

cd "$OLDPWD"


