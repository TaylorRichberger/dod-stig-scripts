#!/bin/sh
printtitle() {
    cat <<"TITLE"
The graphical desktop environment must set the idle timeout to no more than 15 minutes.
TITLE
}

printfix() {
    cat <<"FIX"
Run the following command to set the idle time-out value for inactivity in the GNOME desktop to 15 minutes: # gconftool-2 \--direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type int \--set /apps/gnome-screensaver/idle_delay 15
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Setting the idle delay controls when the screensaver will start, and can be combined with screen locking to prevent access from passersby.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38629
ID
}

