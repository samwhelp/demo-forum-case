#!/usr/bin/env bash


THE_PRJ_NAME="fcitx5-mcbopomofo"

THE_PKG_NAME="${THE_PRJ_NAME}"

THE_PKG_VERSION="0.1.1"


mkdir -p "var/src/${THE_PRJ_NAME}/build/pkg-root"




rm -rf "var/deb"

mkdir -p "var/deb/${THE_PKG_NAME}"




cp -rfv "var/src/${THE_PRJ_NAME}/build/pkg-root/." "var/deb/${THE_PKG_NAME}"

cp -rfv "asset/build/debian/." "var/deb/${THE_PKG_NAME}/debian"




cd "var/deb/${THE_PKG_NAME}"

#debchange --create --package "${THE_PKG_NAME}" --newversion "${THE_PKG_VERSION}" --controlmaint --distribution "unstable" --urgency "low" "Init Release" --changelog debian/changelog

debchange --newversion "${THE_PKG_VERSION}" --controlmaint --distribution "unstable" --urgency "low" "Latest Release" --changelog debian/changelog


#debuild -i -us -uc


##
## > [debuild_ubuntu_debian_package](https://gist.github.com/GeoffWilliams/8caefa46476817b68229)
##
## ```
## How to run debuild with lintian on ubuntu
## fixes error:  bad-distribution-in-changes-file unstable
## Finished running lintian.
## ```
##

debuild -us -uc --lintian-opts --profile debian


cd "${OLDPWD}"
