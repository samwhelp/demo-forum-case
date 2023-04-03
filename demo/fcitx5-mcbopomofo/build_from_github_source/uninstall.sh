#!/usr/bin/env bash


THE_PRJ_NAME="fcitx5-mcbopomofo"


mkdir -p "var/src/${THE_PRJ_NAME}/build"


cd "var/src/${THE_PRJ_NAME}/build"


sudo make uninstall


cd "${OLDPWD}"
