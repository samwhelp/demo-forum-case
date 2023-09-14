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
	
	overlay_key_config_install_by_command

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


overlay_key_config_install_by_command () {
	overlay_key_disable
	#overlay_key_reset_to_default
}

overlay_key_disable () {

	echo
	echo "gsettings set org.gnome.mutter overlay-key ''"
	gsettings set org.gnome.mutter overlay-key "''"

}

overlay_key_reset_to_default () {

	echo
	echo "gsettings reset org.gnome.mutter overlay-key"
	gsettings reset org.gnome.mutter overlay-key

	return 0

	echo
	echo "gsettings set org.gnome.mutter overlay-key 'Super_L'"
	gsettings set org.gnome.mutter overlay-key "'Super_L'"

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
