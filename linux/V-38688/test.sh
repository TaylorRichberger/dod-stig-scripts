#!/bin/sh

if which gconftool-2 >/dev/null 2>&1 && [ "$(gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gdm/simple-greeter/banner_message_enable)" != true ]; then
    echo "Graphical banner is not enabled"
    exit 1
fi

exit 0
