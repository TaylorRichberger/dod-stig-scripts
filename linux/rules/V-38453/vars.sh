#!/bin/sh
printid() {
    cat <<"ID"
V-38453
ID
}

printtitle() {
    cat <<"TITLE"
The system package management tool must verify group-ownership on all files and directories associated with packages.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
The RPM package management system can restore group-ownership of the package files and directories. The following command will update files and directories with group-ownership different from what is expected by the RPM database: # rpm -qf [file or directory name]# rpm --setugids [package]
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Group-ownership of system binaries and configuration files that is incorrect could allow an unauthorized user to gain privileges that they should not have. The group-ownership set by the vendor should be maintained. Any deviations from this baseline should be investigated.
DESCRIPTION
}

