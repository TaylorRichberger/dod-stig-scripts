#!/bin/sh

gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --type string --set /apps/gnome_settings_daemon/keybindings/screensaver "<Control><Alt>l"

