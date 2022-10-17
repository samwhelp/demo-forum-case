#!/usr/bin/env bash

PACKAGE_LIST="$(cat package-list.txt)"

sudo apt-get install ${PACKAGE_LIST}
