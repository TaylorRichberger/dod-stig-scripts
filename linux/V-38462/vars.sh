#!/bin/sh
printtitle() {
    cat <<"TITLE"
The RPM package management tool must cryptographically verify the authenticity of all software packages during installation.
TITLE
}

printid() {
    cat <<"ID"
V-38462
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Ensuring all packages' cryptographic signatures are valid prior to installation ensures the provenance of the software and protects against malicious tampering.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Edit the RPM configuration files containing the "nosignature" option and remove the option.
FIX
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

