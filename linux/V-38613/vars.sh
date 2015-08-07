#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must not permit root logins using remote access programs such as ssh.
TITLE
}

printid() {
    cat <<"ID"
V-38613
ID
}

printfix() {
    cat <<"FIX"
The root user should never be allowed to log in to a system directly over a network. To disable root login via SSH, add or correct the following line in "/etc/ssh/sshd_config": PermitRootLogin no
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Permitting direct root login reduces auditable information about who ran privileged commands on the system and also allows direct attack attempts on root's password.
DESCRIPTION
}

