#!/bin/sh
printid() {
    cat <<"ID"
V-38595
ID
}

printfix() {
    cat <<"FIX"
To enable smart card authentication, consult the documentation at: https://docs.redhat.com/docs/en-US/Red_Hat_Enterprise_Linux/6/html/Managing_Smart_Cards/enabling-smart-card-login.html
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Smart card login provides two-factor authentication stronger than that provided by a username/password combination. Smart cards leverage a PKI (public key infrastructure) in order to provide and verify credentials.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system must be configured to require the use of a CAC, PIV compliant hardware token, or Alternate Logon Token (ALT) for authentication.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

