#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Enabling idle activation of the screen saver ensures the screensaver will be activated after the idle delay. Applications requiring continuous, real-time screen display (such as network management products) require the login session does not have administrator rights and the display station is located in a controlled-access area.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The graphical desktop environment must automatically lock after 15 minutes of inactivity and the system must require user to re-authenticate to unlock the environment.
TITLE
}

printid() {
    cat <<"ID"
V-38630
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
Run the following command to activate the screensaver in the GNOME desktop after a period of inactivity: # gconftool-2 --direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type bool \--set /apps/gnome-screensaver/idle_activation_enabled true
FIX
}

