#!/bin/sh
printid() {
    cat <<"ID"
V-38615
ID
}

printfix() {
    cat <<"FIX"
To enable the warning banner and ensure it is consistent across the system, add or correct the following line in "/etc/ssh/sshd_config": Banner /etc/issueAnother section contains information on how to create an appropriate system-wide warning banner.
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The warning message reinforces policy awareness during the logon process and facilitates possible legal action against attackers. Alternatively, systems whose ownership should not be obvious should ensure usage of a banner that does not provide easy attribution.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The SSH daemon must be configured with the Department of Defense (DoD) login banner.
TITLE
}

