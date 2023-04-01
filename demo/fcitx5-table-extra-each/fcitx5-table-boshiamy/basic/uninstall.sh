#!/usr/bin/env bash


sudo rm -f "/usr/share/fcitx5/table/boshiamy.main.dict"


sudo rm -f "/usr/share/fcitx5/inputmethod/boshiamy.conf"


##
## icons
##

list="16x16 22x22 24x24 48x48 64x64"

for item in ${list}; do

	sudo rm -f "/usr/share/icons/hicolor/${item}/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png"

	sudo rm -f "/usr/share/icons/hicolor/${item}/apps/fcitx-boshiamy.png"

done


sudo gtk-update-icon-cache --force --quiet /usr/share/icons/hicolor
