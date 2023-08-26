#!/usr/bin/env bash


##
## ## Install fcitx5
##

##sudo apt-get install fcitx5 \
##	fcitx5-config-qt \
##	fcitx5-frontend-gtk2 \
##	fcitx5-frontend-gtk3 \
##	fcitx5-frontend-gtk4 \
##	fcitx5-frontend-qt5


##im-config -n fcitx5




##
## ## Build Prepare
##

echo
echo "sudo apt-get install build-essential"
echo
sudo apt-get install build-essential


##echo
##echo "sudo apt-get install dpkg-dev"
##echo
##sudo apt-get install dpkg-dev


echo
echo "sudo apt-get install wget libime-bin fcitx5-chinese-addons"
echo
sudo apt-get install wget libime-bin fcitx5-chinese-addons
