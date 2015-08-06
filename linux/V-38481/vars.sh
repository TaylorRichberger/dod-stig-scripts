#!/bin/sh
printtitle() {
    cat <<"TITLE"
System security patches and updates must be installed and up-to-date.
TITLE
}

printid() {
    cat <<"ID"
V-38481
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Installing software updates is a fundamental mitigation against the exploitation of publicly-known vulnerabilities.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
If the system is joined to the Red Hat Network, a Red Hat Satellite Server, or a yum server, run the following command to install updates: # yum updateIf the system is not configured to use one of these sources, updates (in the form of RPM packages) can be manually downloaded from the Red Hat Network and installed using "rpm".
FIX
}

