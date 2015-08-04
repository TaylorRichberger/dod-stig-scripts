#!/bin/sh
printfix() {
    cat <<"FIX"
In "/etc/pam.d/system-auth", the "password" section of the file controls which PAM modules execute during a password change. Set the "pam_unix.so" module in the "password" section to include the argument "sha512", as shown below: password sufficient pam_unix.so sha512 [other arguments...]This will help ensure when local users change their passwords, hashes for the new passwords will be generated using the SHA-512 algorithm. This is the default.Note that any updates made to "/etc/pam.d/system-auth" will be overwritten by the "authconfig" program.  The "authconfig" program should not be used.
FIX
}

printid() {
    cat <<"ID"
V-38574
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Using a stronger hashing algorithm makes password cracking attacks more difficult.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (system-auth).
TITLE
}

