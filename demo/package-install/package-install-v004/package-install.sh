#!/usr/bin/env bash

main_package_find_list_raw () {
	cat "package-list.txt"
}

sudo apt-get install $(main_package_find_list_raw)
