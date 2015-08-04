#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must require passwords to contain at least one special character.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Requiring a minimum number of special characters makes password guessing attacks more difficult by ensuring a larger search space.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38570
ID
}

printfix() {
    cat <<"FIX"
The pam_cracklib module's "ocredit=" parameter controls requirements for usage of special (or ``other'') characters in a password. When set to a negative number, any password will be required to contain that many special characters. When set to a positive number, pam_cracklib will grant +1 additional length credit for each special character. Add "ocredit=-1" after pam_cracklib.so to require use of a special character in passwords.
FIX
}

