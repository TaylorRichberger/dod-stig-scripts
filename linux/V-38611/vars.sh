#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
SSH trust relationships mean a compromise on one host can allow an attacker to move trivially to other hosts.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38611
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
SSH can emulate the behavior of the obsolete rsh command in allowing users to enable insecure access to their accounts via ".rhosts" files. To ensure this behavior is disabled, add or correct the following line in "/etc/ssh/sshd_config": IgnoreRhosts yes
FIX
}

printtitle() {
    cat <<"TITLE"
The SSH daemon must ignore .rhosts files.
TITLE
}

