#!/bin/sh
printfix() {
    cat <<"FIX"
The RPM package management system can check the hashes of audit system package files. Run the following command to list which audit files on the system have hashes that differ from what is expected by the RPM database: # rpm -V audit | grep '^..5'A "c" in the second column indicates that a file is a configuration file, which may appropriately be expected to change. If the file that has changed was not expected to then refresh from distribution media or online repositories. rpm -Uvh [affected_package]OR yum reinstall [affected_package]
FIX
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The system package management tool must verify contents of all files associated with the audit package.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The hash on important files like audit system executables should match the information given by the RPM database. Audit executables  with erroneous hashes could be a sign of nefarious activity on the system.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38637
ID
}

