#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
A locally logged-in user who presses Ctrl-Alt-Delete, when at the console, can reboot the system. If accidentally pressed, as could happen in the case of mixed OS environment, this can create the risk of short-term loss of availability of systems due to unintentional reboot. In the GNOME graphical environment, risk of unintentional reboot from the Ctrl-Alt-Delete sequence is reduced because the user will be prompted before any action is taken.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The x86 Ctrl-Alt-Delete key sequence must be disabled.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printid() {
    cat <<"ID"
V-38668
ID
}

printfix() {
    cat <<"FIX"
Configure the system to log a message instead of rebooting the system by altering the "shutdown" line in "/etc/init/control-alt-delete.conf" to read as follows: exec /usr/bin/logger -p security.info "Ctrl-Alt-Delete pressed"
FIX
}

