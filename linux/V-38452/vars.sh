#!/bin/sh
printfix() {
    cat <<"FIX"
The RPM package management system can restore file access permissions of package files and directories. The following command will update permissions on files and directories with permissions different from what is expected by the RPM database: # rpm --setperms [package]
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system package management tool must verify permissions on all files and directories associated with packages.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Permissions on system binaries and configuration files that are too generous could allow an unauthorized user to gain privileges that they should not have. The permissions set by the vendor should be maintained. Any deviations from this baseline should be investigated.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38452
ID
}

