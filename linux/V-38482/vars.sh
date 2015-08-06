#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Requiring digits makes password guessing attacks more difficult by ensuring a larger search space.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38482
ID
}

printfix() {
    cat <<"FIX"
The pam_cracklib module's "dcredit" parameter controls requirements for usage of digits in a password. When set to a negative number, any password will be required to contain that many digits. When set to a positive number, pam_cracklib will grant +1 additional length credit for each digit. Add "dcredit=-1" after pam_cracklib.so to require use of a digit in passwords.
FIX
}

printtitle() {
    cat <<"TITLE"
The system must require passwords to contain at least one numeric character.
TITLE
}

