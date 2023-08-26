#!/usr/bin/env bash


##
## ## Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
THE_PLAN_DIR_PATH="${THE_BASE_DIR_PATH}"


##
## ## Path
##

THE_SRC_DIR_PATH="${THE_PLAN_DIR_PATH}/tmp/src"
THE_DEB_DIR_PATH="${THE_PLAN_DIR_PATH}/tmp/deb"
THE_PKG_NAME="fcitx5-table-boshiamy"
THE_DEB_FILE_PATH="${THE_DEB_DIR_PATH}/${THE_PKG_NAME}.deb"


##
## ## Deb List
##

dpkg -c "${THE_DEB_FILE_PATH}"
