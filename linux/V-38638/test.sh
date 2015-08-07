#!/bin/sh
if which gconftool-2 >/dev/null 2>&1 && [ "$(gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/lock_enabled)" != true ]; then
    echo "gconftool is not set with a proper screen lock"
    exit 1
fi

exit 0
