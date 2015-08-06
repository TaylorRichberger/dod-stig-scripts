#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must allow locking of graphical desktop sessions.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The ability to lock graphical desktop sessions manually allows users to easily secure their accounts should they need to depart from their workstations temporarily.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
Run the following command to set the Gnome desktop keybinding for locking the screen:# gconftool-2--direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type string \--set /apps/gnome_settings_daemon/keybindings/screensaver "<Control><Alt>l"Another keyboard sequence may be substituted for "<Control><Alt>l", which is the default for the Gnome desktop.
FIX
}

printid() {
    cat <<"ID"
V-38474
ID
}

