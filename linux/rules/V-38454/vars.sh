#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system package management tool must verify ownership on all files and directories associated with packages.
TITLE
}

printfix() {
    cat <<"FIX"
The RPM package management system can restore ownership of package files and directories. The following command will update files and directories with ownership different from what is expected by the RPM database: # rpm -qf [file or directory name]# rpm --setugids [package]
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38454
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Ownership of system binaries and configuration files that is incorrect could allow an unauthorized user to gain privileges that they should not have. The ownership set by the vendor should be maintained. Any deviations from this baseline should be investigated.
DESCRIPTION
}

