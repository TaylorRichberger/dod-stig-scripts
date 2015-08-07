#!/bin/sh

gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --type string --set /apps/gdm/simple-greeter/banner_message_text "YOU ARE ACCESSING A SECURED PROPRIETARY ABSOLUTE PERFORMANCE SYSTEM"
