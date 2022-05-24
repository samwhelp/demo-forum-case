#!/usr/bin/env bash

mkdir -p 'var/src'

cd 'var/src'

#wget -c 'https://archlinux.org/packages/community/any/fcitx5-table-extra/download' -O 'fcitx5-table-extra-5.0.9-1-any.pkg.tar.zst'

wget -c 'https://archlinux.org/packages/community/any/fcitx5-table-extra/download' -O 'fcitx5-table-extra.pkg.tar.zst'

cd "$OLDPWD"

##
## * https://archlinux.org/packages/community/any/fcitx5-table-extra/
##
