#!/bin/sh
printfix() {
    cat <<"FIX"
Require packet signing of clients who mount Samba shares using the "mount.cifs" program (e.g., those who specify shares in "/etc/fstab"). To do so, ensure signing options (either "sec=krb5i" or "sec=ntlmv2i") are used. See the "mount.cifs(8)" man page for more information. A Samba client should only communicate with servers who can support SMB packet signing.
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38657
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Packet signing can prevent man-in-the-middle attacks which modify SMB packets in transit.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The system must use SMB client signing for connecting to samba servers using mount.cifs.
TITLE
}

