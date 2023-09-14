#!/usr/bin/env bash

set -e


################################################################################
### Head: mouse_button_modifier
##

mouse_button_modifier_config_install () {

	echo
	echo "##"
	echo "## Config: mouse_button_modifier"
	echo "##"
	echo


	mouse_button_modifier_config_install_by_command



	echo

}

mouse_button_modifier_config_install_by_command () {

	mouse_button_modifier_ctrl_set_for_gnome "Super"

	#mouse_button_modifier_ctrl_set_for_gnome "Alt"

	return 0
}


mouse_button_modifier_ctrl_set_for_gnome () {


	##
	## /usr/share/glib-2.0/schemas/org.gnome.desktop.wm.preferences.gschema.xml
	##


	echo "## Config: mouse_button_modifier_ctrl_set_for_gnome_shell"

	local mouse_button_modifier="${1}"


	echo
	echo "##"
	echo "## mouse_button_modifier: ${mouse_button_modifier}"
	echo "##"
	echo


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier \"<${mouse_button_modifier}>\""
	gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "<${mouse_button_modifier}>"


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true"
	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true


	echo

	return 0
}



##
### Tail: mouse_button_modifier
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	mouse_button_modifier_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
