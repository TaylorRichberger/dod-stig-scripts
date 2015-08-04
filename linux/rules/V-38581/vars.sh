#!/bin/sh
printid() {
    cat <<"ID"
V-38581
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
The file "/etc/grub.conf" should be group-owned by the "root" group to prevent destruction or modification of the file. To properly set the group owner of "/etc/grub.conf", run the command: # chgrp root /etc/grub.conf
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The "root" group is a highly-privileged group. Furthermore, the group-owner of this file should not have any access privileges anyway.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system boot loader configuration file(s) must be group-owned by root.
TITLE
}

