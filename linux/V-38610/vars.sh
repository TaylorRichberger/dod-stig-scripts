#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
This ensures a user login will be terminated as soon as the "ClientAliveCountMax" is reached.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The SSH daemon must set a timeout count on idle sessions.
TITLE
}

printfix() {
    cat <<"FIX"
To ensure the SSH idle timeout occurs precisely when the "ClientAliveCountMax" is set, edit "/etc/ssh/sshd_config" as follows: ClientAliveCountMax 0
FIX
}

printid() {
    cat <<"ID"
V-38610
ID
}

