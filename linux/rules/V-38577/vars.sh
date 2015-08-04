#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (libuser.conf).
TITLE
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

printfix() {
    cat <<"FIX"
In "/etc/libuser.conf", add or correct the following line in its "[defaults]" section to ensure the system will use the SHA-512 algorithm for password hashing: crypt_style = sha512
FIX
}

printid() {
    cat <<"ID"
V-38577
ID
}

