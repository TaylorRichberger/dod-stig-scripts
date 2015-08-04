#!/bin/sh
printid() {
    cat <<"ID"
V-38664
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Ownership of audit binaries and configuration files that is incorrect could allow an unauthorized user to gain privileges that they should not have. The ownership set by the vendor should be maintained. Any deviations from this baseline should be investigated.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
The RPM package management system can restore file ownership of the audit package files and directories. The following command will update audit files with ownership different from what is expected by the RPM database: # rpm --setugids audit
FIX
}

printtitle() {
    cat <<"TITLE"
The system package management tool must verify ownership on all files and directories associated with the audit package.
TITLE
}

