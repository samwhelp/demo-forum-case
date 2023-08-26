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
THE_PKG_DIR_PATH="${THE_DEB_DIR_PATH}/${THE_PKG_NAME}"




##
## ## Link
##
## * https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=364600#forumpost364600
##




##
## ## Prepare
##

##echo "sudo apt-get install wget libime-bin fcitx5-chinese-addons"
##sudo apt-get install wget libime-bin fcitx5-chinese-addons


mkdir -p "${THE_SRC_DIR_PATH}"
mkdir -p "${THE_PKG_DIR_PATH}"




##
## ## Download
##
## * [boshiamy.txt](https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/boshiamy.txt)
## * [boshiamy.conf.in](https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/boshiamy.conf.in)
## * [org.fcitx.Fcitx5.fcitx-boshiamy.png](https://github.com/fcitx/fcitx5-table-extra/blob/master/icons/48x48/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png)
##
##

wget -c https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.txt -O "${THE_SRC_DIR_PATH}/boshiamy.txt"

wget -c https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.conf.in -O "${THE_SRC_DIR_PATH}/boshiamy.conf.in"

wget -c https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/icons/48x48/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png -O "${THE_SRC_DIR_PATH}/org.fcitx.Fcitx5.fcitx-boshiamy.png"




##
## ## Compile
##

libime_tabledict "${THE_SRC_DIR_PATH}/boshiamy.txt" "${THE_SRC_DIR_PATH}/boshiamy.main.dict"




##
## ## Install
##
## * /usr/share/fcitx5/table/boshiamy.main.dict
## * /usr/share/fcitx5/inputmethod/boshiamy.conf
## * /usr/share/icons/hicolor/48x48/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png
## * /usr/share/icons/hicolor/48x48/apps/fcitx-boshiamy.png
##

install -Dm644 "${THE_SRC_DIR_PATH}/boshiamy.main.dict" "${THE_PKG_DIR_PATH}/usr/share/fcitx5/table/boshiamy.main.dict"

install -Dm644 "${THE_SRC_DIR_PATH}/boshiamy.conf.in" "${THE_PKG_DIR_PATH}/usr/share/fcitx5/inputmethod/boshiamy.conf"

install -Dm644 "${THE_SRC_DIR_PATH}/org.fcitx.Fcitx5.fcitx-boshiamy.png" "${THE_PKG_DIR_PATH}/usr/share/icons/hicolor/48x48/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png"


install -dm755 "${THE_PKG_DIR_PATH}/usr/share/icons/hicolor/48x48/apps"
cd "${THE_PKG_DIR_PATH}/usr/share/icons/hicolor/48x48/apps"
sudo ln -sf org.fcitx.Fcitx5.fcitx-boshiamy.png fcitx-boshiamy.png
cd "${OLDPWD}"


##sudo gtk-update-icon-cache --force --quiet /usr/share/icons/hicolor




##
## ## Build Debian Package
##


##
## ### create deb-control
##

THE_DEBIAN_DIR_PATH="${THE_PKG_DIR_PATH}/DEBIAN"

THE_PKG_VER="0.1"
THE_PKG_REL="1"
THE_PKG_ARCH="all"
THE_PKG_MAINTAINER="developer <developer@home.work>"
THE_PKG_DESCRIPTION="This is a personal package which build for fcitx5-table-boshiamy"

mkdir -p "${THE_DEBIAN_DIR_PATH}"

cat > "${THE_DEBIAN_DIR_PATH}/control" << __EOF__
Package: ${THE_PKG_NAME}
Version: ${THE_PKG_VER}.${THE_PKG_REL}
Architecture: ${THE_PKG_ARCH}
Maintainer: ${THE_PKG_MAINTAINER}
Description: ${THE_PKG_DESCRIPTION}

__EOF__


##
## ### start build deb
##

cd "${THE_DEB_DIR_PATH}"

dpkg -b "${THE_PKG_NAME}"

cd "${OLDPWD}"
