#!/bin/sh
printfix() {
    cat <<"FIX"
Run the following command to activate locking of the screensaver in the GNOME desktop when it is activated: # gconftool-2 --direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type bool \--set /apps/gnome-screensaver/lock_enabled true
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The graphical desktop environment must have automatic lock enabled.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Enabling the activation of the screen lock after an idle period ensures password entry will be required in order to access the system, preventing access by passersby.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38638
ID
}

