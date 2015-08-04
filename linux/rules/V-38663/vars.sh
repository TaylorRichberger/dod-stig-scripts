#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system package management tool must verify permissions on all files and directories associated with the audit package.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
The RPM package management system can restore file access permissions of the audit package files and directories. The following command will update audit files with permissions different from what is expected by the RPM database: # rpm --setperms audit
FIX
}

printid() {
    cat <<"ID"
V-38663
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Permissions on audit binaries and configuration files that are too generous could allow an unauthorized user to gain privileges that they should not have. The permissions set by the vendor should be maintained. Any deviations from this baseline should be investigated.
DESCRIPTION
}

