#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
SSH environment options potentially allow users to bypass access restriction in some configurations.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The SSH daemon must not permit user environment settings.
TITLE
}

printfix() {
    cat <<"FIX"
To ensure users are not able to present environment options to the SSH daemon, add or correct the following line in "/etc/ssh/sshd_config": PermitUserEnvironment no
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38616
ID
}

