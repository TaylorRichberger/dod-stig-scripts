#!/bin/sh
printid() {
    cat <<"ID"
V-38572
ID
}

printfix() {
    cat <<"FIX"
The pam_cracklib module's "difok" parameter controls requirements for usage of different characters during a password change. Add "difok=[NUM]" after pam_cracklib.so to require differing characters when changing passwords, substituting [NUM] appropriately. The DoD requirement is 4.
FIX
}

printtitle() {
    cat <<"TITLE"
The system must require at least four characters be changed between the old and new passwords during a password change.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Requiring a minimum number of different characters during password changes ensures that newly changed passwords should not resemble previously compromised ones. Note that passwords which are changed on compromised systems will still be compromised, however.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

