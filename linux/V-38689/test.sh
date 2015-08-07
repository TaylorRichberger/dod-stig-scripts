#!/bin/sh

if which gconftool-2 >/dev/null 2>&1 && [ -z "$(gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/idle_activation_enabled)" ]; then
    echo "a banner should be displayed"
    exit 1
fi

exit 0
