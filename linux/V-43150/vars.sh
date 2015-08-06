#!/bin/sh
printfix() {
    cat <<"FIX"
In the default graphical environment, users logging directly into the system are greeted with a login screen that displays all known users. This functionality should be disabled.Run the following command to disable the user list:$ sudo gconftool-2 --direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type bool --set /apps/gdm/simple-greeter/disable_user_list true
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Leaving the user list enabled is a security risk since it allows anyone with physical access to the system to quickly enumerate known user accounts without logging in.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-43150
ID
}

printtitle() {
    cat <<"TITLE"
The login user list must be disabled.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

