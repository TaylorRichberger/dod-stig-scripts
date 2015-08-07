#!/bin/sh
printid() {
    cat <<"ID"
V-38447
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The hash on important files like system executables should match the information given by the RPM database. Executables with erroneous hashes could be a sign of nefarious activity on the system.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
The RPM package management system can check the hashes of installed software packages, including many that are important to system security. Run the following command to list which files on the system have hashes that differ from what is expected by the RPM database: # rpm -Va | grep '^..5'A "c" in the second column indicates that a file is a configuration file, which may appropriately be expected to change. If the file that has changed was not expected to then refresh from distribution media or online repositories. rpm -Uvh [affected_package]OR yum reinstall [affected_package]
FIX
}

printtitle() {
    cat <<"TITLE"
The system package management tool must verify contents of all files associated with packages.
TITLE
}

