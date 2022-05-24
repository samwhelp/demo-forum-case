#!/usr/bin/env bash

PKG_ROOT="fcitx5-table-extra"

mkdir -p "var/deb/$PKG_ROOT"

rm -rf "var/deb/$PKG_ROOT/usr"

cp -av "var/src/usr" "var/deb/$PKG_ROOT/usr"

mkdir -p "var/deb/$PKG_ROOT/DEBIAN"



cat > "var/deb/$PKG_ROOT/DEBIAN/control" << EOF
Package: fcitx5-table-extra
Version: 0.1
Architecture: all
Description: This is a personal package which build from arch package.
Maintainer: developer <developer@home>

EOF


cd 'var/deb'

rm -f ./*.deb

dpkg -b "$PKG_ROOT"

cd "$OLDPWD"
