#!/bin/sh
printid() {
    cat <<"ID"
V-38487
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
To ensure signature checking is not disabled for any repos, remove any lines from files in "/etc/yum.repos.d" of the form: gpgcheck=0
FIX
}

printtitle() {
    cat <<"TITLE"
The system package management tool must cryptographically verify the authenticity of all software packages during installation.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Ensuring all packages' cryptographic signatures are valid prior to installation ensures the provenance of the software and protects against malicious tampering.
DESCRIPTION
}

