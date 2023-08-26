#!/usr/bin/env bash


##
## ## Attribute
##

THE_PKG_NAME="fcitx5-table-boshiamy"


##
## ## Installed Info
##

echo

apt-cache show "${THE_PKG_NAME}"

echo

dpkg -l "${THE_PKG_NAME}"

echo
