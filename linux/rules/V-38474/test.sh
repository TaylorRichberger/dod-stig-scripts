#!/bin/sh

if which gconftool-2 >/dev/null 2>&1 && [ -z "$(gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome_settings_daemon/keybindings/screensaver)" ]; then
    echo "gconftool is not set with a keybinding for locking the screen"
    exit 1
fi

exit 0
