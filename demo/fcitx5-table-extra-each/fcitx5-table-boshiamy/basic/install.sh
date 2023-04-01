#!/usr/bin/env bash


cd "var/src/boshiamy"




sudo mkdir -p "/usr/share/fcitx5/table"


sudo mkdir -p "/usr/share/fcitx5/inputmethod"


sudo install -Dm644 boshiamy.main.dict "/usr/share/fcitx5/table/boshiamy.main.dict"


sudo install -Dm644 boshiamy.conf "/usr/share/fcitx5/inputmethod/boshiamy.conf"





cd "$OLDPWD"




##
## icons
##


sudo cp ./var/src/boshiamy/icons/hicolor/. -rf "/usr/share/icons/hicolor"
