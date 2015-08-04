#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Ensuring the validity of packages' cryptographic signatures prior to installation ensures the provenance of the software and protects against malicious tampering.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38483
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system package management tool must cryptographically verify the authenticity of system software packages during installation.
TITLE
}

printfix() {
    cat <<"FIX"
The "gpgcheck" option should be used to ensure checking of an RPM package's signature always occurs prior to its installation. To configure yum to check package signatures before installing them, ensure the following line appears in "/etc/yum.conf" in the "[main]" section: gpgcheck=1
FIX
}

