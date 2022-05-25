#!/usr/bin/env bash


SRC_ROOT="fcitx5-table-extra"


mkdir -p "var/src/$SRC_ROOT/build"


cd "var/src/$SRC_ROOT/build"


sudo make uninstall


cd "$OLDPWD"
