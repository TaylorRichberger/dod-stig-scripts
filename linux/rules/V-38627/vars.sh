#!/bin/sh
printfix() {
    cat <<"FIX"
The "openldap-servers" package should be removed if not in use. Is this machine the OpenLDAP server? If not, remove the package. # yum erase openldap-serversThe openldap-servers RPM is not installed by default on RHEL6 machines. It is needed only by the OpenLDAP server, not by the clients which use LDAP for authentication. If the system is not intended for use as an LDAP Server it should be removed.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Unnecessary packages should not be installed to decrease the attack surface of the system.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The openldap-servers package must not be installed unless required.
TITLE
}

printid() {
    cat <<"ID"
V-38627
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

