#!/bin/sh
printfix() {
    cat <<"FIX"
To ensure all processes can be audited, even those which start prior to the audit daemon, add the argument "audit=1" to the kernel line in "/etc/grub.conf", in the manner below: kernel /vmlinuz-version ro vga=ext root=/dev/VolGroup00/LogVol00 rhgb quiet audit=1
FIX
}

printid() {
    cat <<"ID"
V-38438
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Each process on the system carries an "auditable" flag which indicates whether its activities can be audited. Although "auditd" takes care of enabling this for all processes which launch after it does, adding the kernel argument ensures it is set for every process during boot.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
Auditing must be enabled at boot by setting a kernel parameter.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

