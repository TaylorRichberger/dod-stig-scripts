#!/bin/sh
printid() {
    cat <<"ID"
V-38693
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must require passwords to contain no more than three consecutive repeating characters.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Passwords with excessive repeating characters may be more vulnerable to password-guessing attacks.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The pam_cracklib module's "maxrepeat" parameter controls requirements for consecutive repeating characters. Edit the "/etc/pam.d/system-auth" file to include the following line prior to the "password include system-auth-ac" line: password required pam_cracklib.so maxrepeat=3
FIX
}

