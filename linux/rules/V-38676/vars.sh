#!/bin/sh
printfix() {
    cat <<"FIX"
Removing all packages which constitute the X Window System ensures users or malicious software cannot start X. To do so, run the following command: # yum groupremove "X Window System"
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Unnecessary packages should not be installed to decrease the attack surface of the system.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38676
ID
}

printtitle() {
    cat <<"TITLE"
The xorg-x11-server-common (X Windows) package must not be installed, unless required.
TITLE
}

