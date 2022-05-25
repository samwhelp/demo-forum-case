#!/usr/bin/env bash


PKG_ROOT="fcitx5-table-extra"




rm -rf "var/deb"

mkdir -p "var/deb/$PKG_ROOT"




cp -av "var/src/usr" "var/deb/$PKG_ROOT/usr"

cp -av "asset/build/debian" "var/deb/$PKG_ROOT/debian"




cd "var/deb/$PKG_ROOT"

debuild -i -us -uc

cd "$OLDPWD"
