#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The AIDE package must be installed if it is to be available for integrity checking.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38489
ID
}

printfix() {
    cat <<"FIX"
Install the AIDE package with the command: # yum install aide
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
A file integrity tool must be installed.
TITLE
}

