#!/bin/sh
printfix() {
    cat <<"FIX"
SSH's cryptographic host-based authentication is more secure than ".rhosts" authentication, since hosts are cryptographically authenticated. However, it is not recommended that hosts unilaterally trust one another, even within an organization. To disable host-based authentication, add or correct the following line in "/etc/ssh/sshd_config": HostbasedAuthentication no
FIX
}

printid() {
    cat <<"ID"
V-38612
ID
}

printdescription() {
    cat <<"DESCRIPTION"
SSH trust relationships mean a compromise on one host can allow an attacker to move trivially to other hosts.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The SSH daemon must not allow host-based authentication.
TITLE
}

