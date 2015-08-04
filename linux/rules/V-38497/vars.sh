#!/bin/sh
printfix() {
    cat <<"FIX"
If an account is configured for password authentication but does not have an assigned password, it may be possible to log into the account without authentication. Remove any instances of the "nullok" option in "/etc/pam.d/system-auth-ac" to prevent logins with empty passwords.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
If an account has an empty password, anyone could log in and run commands with the privileges of that account. Accounts with empty passwords should never be used in operational environments.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must not have accounts configured with blank or null passwords.
TITLE
}

printid() {
    cat <<"ID"
V-38497
ID
}

