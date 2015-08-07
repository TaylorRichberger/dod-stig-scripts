#!/bin/sh

if which gconftool-2 >/dev/null 2>&1 && [ "$(gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/idle_delay)" -ne 15 ]; then
    echo "gconftool is not set with a proper idle timeout"
    exit 1
fi
exit 0
