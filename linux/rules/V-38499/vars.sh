#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The hashes for all user account passwords should be stored in the file "/etc/shadow" and never in "/etc/passwd", which is readable by all users.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
If any password hashes are stored in "/etc/passwd" (in the second field, instead of an "x"), the cause of this misconfiguration should be investigated. The account should have its password reset and the hash should be properly stored, or the account should be deleted entirely.
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38499
ID
}

printtitle() {
    cat <<"TITLE"
The /etc/passwd file must not contain password hashes.
TITLE
}

