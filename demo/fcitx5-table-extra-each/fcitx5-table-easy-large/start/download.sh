#!/usr/bin/env bash


mkdir -p 'var/src/easy-large'


wget -c 'https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/easy-large.conf.in' -O 'var/src/easy-large/easy-large.conf'


wget -c 'https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/easy-large.txt' -O 'var/src/easy-large/easy-large.txt'


##
## * https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/easy-large.conf.in
## * https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/easy-large.txt
##

