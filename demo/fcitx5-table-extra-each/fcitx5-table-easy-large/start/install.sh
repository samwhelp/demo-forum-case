#!/usr/bin/env bash


cd "var/src/easy-large"




sudo mkdir -p "/usr/share/fcitx5/table"


sudo mkdir -p "/usr/share/fcitx5/inputmethod"


sudo install -Dm644 easy-large.main.dict "/usr/share/fcitx5/table/easy-large.main.dict"


sudo install -Dm644 easy-large.conf "/usr/share/fcitx5/inputmethod/easy-large.conf"





cd "$OLDPWD"
