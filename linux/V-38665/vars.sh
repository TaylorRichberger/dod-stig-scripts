#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Group-ownership of audit binaries and configuration files that is incorrect could allow an unauthorized user to gain privileges that they should not have. The group-ownership set by the vendor should be maintained. Any deviations from this baseline should be investigated.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system package management tool must verify group-ownership on all files and directories associated with the audit package.
TITLE
}

printfix() {
    cat <<"FIX"
The RPM package management system can restore file group-ownership of the audit package files and directories. The following command will update audit files with group-ownership different from what is expected by the RPM database: # rpm --setugids audit
FIX
}

printid() {
    cat <<"ID"
V-38665
ID
}

