#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
The pam_cracklib module's "ucredit=" parameter controls requirements for usage of uppercase letters in a password. When set to a negative number, any password will be required to contain that many uppercase characters. When set to a positive number, pam_cracklib will grant +1 additional length credit for each uppercase character. Add "ucredit=-1" after pam_cracklib.so to require use of an uppercase character in passwords.
FIX
}

printtitle() {
    cat <<"TITLE"
The system must require passwords to contain at least one uppercase alphabetic character.
TITLE
}

printid() {
    cat <<"ID"
V-38569
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Requiring a minimum number of uppercase characters makes password guessing attacks more difficult by ensuring a larger search space.
DESCRIPTION
}

