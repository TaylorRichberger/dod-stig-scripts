#!/bin/sh
printtitle() {
    cat <<"TITLE"
The operating system must conduct backups of system-level information contained in the information system per organization defined frequency to conduct backups that are consistent with recovery time and recovery point objectives.
TITLE
}

printid() {
    cat <<"ID"
V-38486
ID
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
Operating system backup is a critical step in maintaining data assurance and availability. System-level information includes system-state information, operating system and application software, and licenses. Backups must be consistent with organizational recovery time and recovery point objectives.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Procedures to back up OS data from the system must be established and executed. The Red Hat operating system provides utilities for automating such a process.  Commercial and open-source products are also available.Implement a process whereby OS data is backed up from the system in accordance with local policies.
FIX
}

