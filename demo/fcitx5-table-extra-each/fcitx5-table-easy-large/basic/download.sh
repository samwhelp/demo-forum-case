#!/usr/bin/env bash


##
## * https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/easy-large.conf.in
## * https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/easy-large.txt
##


mkdir -p 'var/src/easy-large'


wget -c 'https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/easy-large.conf.in' -O 'var/src/easy-large/easy-large.conf'


wget -c 'https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/easy-large.txt' -O 'var/src/easy-large/easy-large.txt'




##
## ## icons
##

mkdir -p var/src/easy-large/icons/hicolor/{16x16,22x22,24x24,48x48,64x64}/apps

list="16x16 22x22 24x24 48x48 64x64"

for item in ${list}; do

	wget -c "https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/icons/${item}/apps/org.fcitx.Fcitx5.fcitx-easy-large.png" -O "var/src/easy-large/icons/hicolor/${item}/apps/org.fcitx.Fcitx5.fcitx-easy-large.png"

	cd "var/src/easy-large/icons/hicolor/${item}/apps"

	ln -sf "org.fcitx.Fcitx5.fcitx-easy-large.png" "fcitx-easy-large.png"

	cd "${OLDPWD}"

done
