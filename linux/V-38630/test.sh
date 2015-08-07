#!/bin/sh


if which gconftool-2 >/dev/null 2>&1 && [ "$(gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/idle_activation_enabled)" != true ]; then
    echo "gconftool idle screensaver activation is not set"
    exit 1
fi

exit 0
