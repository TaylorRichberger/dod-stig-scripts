#!/bin/sh
printtitle() {
    cat <<"TITLE"
The system must use SMB client signing for connecting to samba servers using smbclient.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
Packet signing can prevent man-in-the-middle attacks which modify SMB packets in transit.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38656
ID
}

printfix() {
    cat <<"FIX"
To require samba clients running "smbclient" to use packet signing, add the following to the "[global]" section of the Samba configuration file in "/etc/samba/smb.conf": client signing = mandatoryRequiring samba clients such as "smbclient" to use packet signing ensures they can only communicate with servers that support packet signing.
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

