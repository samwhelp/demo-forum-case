#!/usr/bin/env bash


##
## * https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/boshiamy.conf.in
## * https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/boshiamy.txt
##


mkdir -p 'var/src/boshiamy'


wget -c 'https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.conf.in' -O 'var/src/boshiamy/boshiamy.conf'


wget -c 'https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.txt' -O 'var/src/boshiamy/boshiamy.txt'




##
## ## icons
##

mkdir -p var/src/boshiamy/icons/hicolor/{16x16,22x22,24x24,48x48,64x64}/apps

list="16x16 22x22 24x24 48x48 64x64"

for item in ${list}; do

	wget -c "https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/icons/${item}/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png" -O "var/src/boshiamy/icons/hicolor/${item}/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png"

	cd "var/src/boshiamy/icons/hicolor/${item}/apps"

	ln -sf "org.fcitx.Fcitx5.fcitx-boshiamy.png" "fcitx-boshiamy.png"

	cd "${OLDPWD}"

done
