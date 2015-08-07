#!/bin/sh
printid() {
    cat <<"ID"
V-38579
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Only root should be able to modify important boot parameters.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system boot loader configuration file(s) must be owned by root.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
The file "/etc/grub.conf" should be owned by the "root" user to prevent destruction or modification of the file. To properly set the owner of "/etc/grub.conf", run the command: # chown root /etc/grub.conf
FIX
}

