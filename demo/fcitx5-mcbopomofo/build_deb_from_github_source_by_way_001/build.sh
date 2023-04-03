#!/usr/bin/env bash


THE_PRJ_NAME="fcitx5-mcbopomofo"


mkdir -p "var/src/${THE_PRJ_NAME}/build/pkg-root"




rm -rf "var/deb"

mkdir -p "var/deb/${THE_PRJ_NAME}"




cp -rfv "var/src/${THE_PRJ_NAME}/build/pkg-root/." "var/deb/${THE_PRJ_NAME}"




mkdir -p "var/deb/${THE_PRJ_NAME}/DEBIAN"

cat > "var/deb/${THE_PRJ_NAME}/DEBIAN/control" << EOF
Package: ${THE_PRJ_NAME}
Version: 0.1.0
Architecture: all
Description: This is a personal package.
Maintainer: developer <developer@home.work>

EOF




cd 'var/deb'

dpkg -b "${THE_PRJ_NAME}"

cd "$OLDPWD"
