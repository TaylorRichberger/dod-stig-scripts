#!/bin/sh
printtitle() {
    cat <<"TITLE"
The root account must be the only account having a UID of 0.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
If any account other than root has a UID of 0, this misconfiguration should be investigated and the accounts other than root should be removed or have their UID changed.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
An account has root authority if it has a UID of 0. Multiple accounts with a UID of 0 afford more opportunity for potential intruders to guess a password for a privileged account. Proper configuration of sudo is recommended to afford multiple system administrators access to root privileges in an accountable manner.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38500
ID
}

