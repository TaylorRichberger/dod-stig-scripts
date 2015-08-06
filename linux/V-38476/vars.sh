#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
The Red Hat, CentOS, Oracle Linux, Ubuntu GPG key is necessary to cryptographically verify packages are from Vendor. 
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38476
ID
}

printseverity() {
    cat <<"SEVERITY"
high
SEVERITY
}

printfix() {
    cat <<"FIX"
To ensure the system can cryptographically verify base software packages come from Red Hat (and to connect to the Red Hat Network to receive them), the Red Hat GPG key must properly be installed. To install the Red Hat GPG key, run:# rhn_registerIf the system is not connected to the Internet or an RHN Satellite, then install the Red Hat GPG key from trusted media such as the Red Hat installation CD-ROM or DVD. Assuming the disc is mounted in "/media/cdrom", use the following command as the root user to import it into the keyring:# rpm --import /media/cdrom/RPM-GPG-KEY
FIX
}

printtitle() {
    cat <<"TITLE"
Vendor-provided cryptographic certificates must be installed to verify the integrity of system software. (made distribution agnostic)
TITLE
}

