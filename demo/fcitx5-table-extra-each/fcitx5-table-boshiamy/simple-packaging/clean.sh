#!/usr/bin/env bash


##
## ## Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
THE_PLAN_DIR_PATH="${THE_BASE_DIR_PATH}"


##
## ## Path
##

THE_TMP_DIR_PATH="${THE_PLAN_DIR_PATH}/tmp"




##
## ## Clean
##

rm -rf "${THE_TMP_DIR_PATH}"
