#!/bin/sh
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
In "/etc/login.defs", add or correct the following line to ensure the system will use SHA-512 as the hashing algorithm: ENCRYPT_METHOD SHA512
FIX
}

printtitle() {
    cat <<"TITLE"
The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (login.defs).
TITLE
}

printid() {
    cat <<"ID"
V-38576
ID
}

