#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38674
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Unnecessary services should be disabled to decrease the attack surface of the system.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
X Windows must not be enabled unless required.
TITLE
}

printfix() {
    cat <<"FIX"
Setting the system's runlevel to 3 will prevent automatic startup of the X server. To do so, ensure the following line in "/etc/inittab" features a "3" as shown: id:3:initdefault:
FIX
}

