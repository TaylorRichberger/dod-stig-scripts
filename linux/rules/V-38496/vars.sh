#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Disabling authentication for default system accounts makes it more difficult for attackers to make use of them to compromise a system.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Some accounts are not associated with a human user of the system, and exist to perform some administrative function. An attacker should not be able to log into these accounts. Disable login access to these accounts with the command: # passwd -l [SYSACCT]
FIX
}

printtitle() {
    cat <<"TITLE"
Default operating system accounts, other than root, must be locked.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38496
ID
}

