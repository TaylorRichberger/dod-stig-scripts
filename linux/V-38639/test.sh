#!/bin/sh

if which gconftool-2 >/dev/null 2>&1 && [ "$(gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/mode)" != blank-only ]; then
    echo "gconftool is not set with a proper screensaver"
    exit 1
fi

exit 0
