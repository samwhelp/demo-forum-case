#!/usr/bin/env bash


THE_PRJ_NAME="fcitx5-mcbopomofo"

THE_PRJ_GIT_URL="https://github.com/openvanilla/fcitx5-mcbopomofo.git"


mkdir -p 'var/src'


git clone "$THE_PRJ_GIT_URL" "var/src/${THE_PRJ_NAME}"


##
## wget -c 'https://github.com/openvanilla/fcitx5-mcbopomofo/archive/refs/heads/master.zip' -O 'var/src/master.zip'
## cd 'var/src'
## unzip master.zip
##


##
## * https://github.com/openvanilla/fcitx5-mcbopomofo
##
