#!/bin/sh
printfix() {
    cat <<"FIX"
Run the following command to set the screensaver mode in the GNOME desktop to a blank screen: # gconftool-2 \--direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type string \--set /apps/gnome-screensaver/mode blank-only
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38639
ID
}

printtitle() {
    cat <<"TITLE"
The system must display a publicly-viewable pattern during a graphical desktop environment session lock.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Setting the screensaver mode to blank-only conceals the contents of the display from passersby.
DESCRIPTION
}

