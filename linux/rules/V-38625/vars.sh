#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38625
ID
}

printfix() {
    cat <<"FIX"
Configure LDAP to enforce TLS use. First, edit the file "/etc/pam_ldap.conf", and add or correct the following lines: ssl start_tlsThen review the LDAP server and ensure TLS has been configured.
FIX
}

printtitle() {
    cat <<"TITLE"
If the system is using LDAP for authentication or account information, the system must use a TLS connection using FIPS 140-2 approved cryptographic algorithms.
TITLE
}

printdescription() {
    cat <<"DESCRIPTION"
The ssl directive specifies whether to use ssl or not. If not specified it will default to "no". It should be set to "start_tls" rather than doing LDAP over SSL.
DESCRIPTION
}

