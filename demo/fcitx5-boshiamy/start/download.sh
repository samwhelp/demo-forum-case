#!/usr/bin/env bash


mkdir -p 'var/src/boshiamy'


wget -c 'https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.conf.in' -O 'var/src/boshiamy/boshiamy.conf'


wget -c 'https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.txt' -O 'var/src/boshiamy/boshiamy.txt'


##
## * https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/boshiamy.conf.in
## * https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/boshiamy.txt
##

