#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Trust files are convenient, but when used in conjunction with the R-services, they can allow unauthenticated access to a system.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
There must be no .rhosts or hosts.equiv files on the system.
TITLE
}

printid() {
    cat <<"ID"
V-38491
ID
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printfix() {
    cat <<"FIX"
The files "/etc/hosts.equiv" and "~/.rhosts" (in each user's home directory) list remote hosts and users that are trusted by the local system when using the rshd daemon. To remove these files, run the following command to delete them from any location. # rm /etc/hosts.equiv$ rm ~/.rhosts
FIX
}

