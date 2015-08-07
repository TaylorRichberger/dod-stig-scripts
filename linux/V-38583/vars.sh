#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system boot loader configuration file(s) must have mode 0600 or less permissive.
TITLE
}

printid() {
    cat <<"ID"
V-38583
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
File permissions for "/etc/grub.conf" should be set to 600, which is the default. To properly set the permissions of "/etc/grub.conf", run the command: # chmod 600 /etc/grub.conf
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Proper permissions ensure that only the root user can modify important boot parameters.
DESCRIPTION
}

