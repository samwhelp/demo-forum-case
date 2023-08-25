#!/usr/bin/env bash


##
## ## Link
##
## * https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=364600#forumpost364600
##


##
## ## Install fcitx5
##

sudo apt-get install fcitx5 \
	fcitx5-config-qt \
	fcitx5-frontend-gtk2 \
	fcitx5-frontend-gtk3 \
	fcitx5-frontend-gtk4 \
	fcitx5-frontend-qt5


im-config -n fcitx5




##
## ## Prepare
##

sudo apt-get install wget libime-bin fcitx5-chinese-addons




##
## ## Download
##
## * [boshiamy.txt](https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/boshiamy.txt)
## * [boshiamy.conf.in](https://github.com/fcitx/fcitx5-table-extra/blob/master/tables/boshiamy.conf.in)
## * [org.fcitx.Fcitx5.fcitx-boshiamy.png](https://github.com/fcitx/fcitx5-table-extra/blob/master/icons/48x48/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png)
##
##

wget -c https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.txt

wget -c https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.conf.in

wget -c https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/icons/48x48/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png




##
## ## Compile
##

libime_tabledict boshiamy.txt boshiamy.main.dict




##
## ## Install
##
## * /usr/share/fcitx5/table/boshiamy.main.dict
## * /usr/share/fcitx5/inputmethod/boshiamy.conf
## * /usr/share/icons/hicolor/48x48/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png
## * /usr/share/icons/hicolor/48x48/apps/fcitx-boshiamy.png
##

sudo install -Dm644 boshiamy.main.dict /usr/share/fcitx5/table/boshiamy.main.dict

sudo install -Dm644 boshiamy.conf.in /usr/share/fcitx5/inputmethod/boshiamy.conf

sudo install -Dm644 org.fcitx.Fcitx5.fcitx-boshiamy.png /usr/share/icons/hicolor/48x48/apps/org.fcitx.Fcitx5.fcitx-boshiamy.png


cd /usr/share/icons/hicolor/48x48/apps
sudo ln -sf org.fcitx.Fcitx5.fcitx-boshiamy.png fcitx-boshiamy.png
cd "${OLDPWD}"

sudo gtk-update-icon-cache --force --quiet /usr/share/icons/hicolor
