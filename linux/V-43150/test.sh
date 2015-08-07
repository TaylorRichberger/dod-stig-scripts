#!/bin/sh

if which gconftool-2 >/dev/null 2>&1 && [ "$(gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gdm/simple-greeter/disable_user_list)" != true ]; then
    echo "gconftool user list is not disabled"
    exit 1
fi

exit 0
