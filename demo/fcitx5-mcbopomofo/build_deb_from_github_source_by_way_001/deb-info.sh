#!/usr/bin/env bash


THE_PRJ_NAME="fcitx5-mcbopomofo"

THE_DEB_NAME="${THE_PRJ_NAME}.deb"

dpkg -I "var/deb/${THE_DEB_NAME}"
