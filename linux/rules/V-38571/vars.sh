#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must require passwords to contain at least one lowercase alphabetic character.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38571
ID
}

printfix() {
    cat <<"FIX"
The pam_cracklib module's "lcredit=" parameter controls requirements for usage of lowercase letters in a password. When set to a negative number, any password will be required to contain that many lowercase characters. When set to a positive number, pam_cracklib will grant +1 additional length credit for each lowercase character. Add "lcredit=-1" after pam_cracklib.so to require use of a lowercase character in passwords.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Requiring a minimum number of lowercase characters makes password guessing attacks more difficult by ensuring a larger search space.
DESCRIPTION
}

