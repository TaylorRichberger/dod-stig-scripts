#!/bin/sh
printtitle() {
    cat <<"TITLE"
The LDAP client must use a TLS connection using trust certificates signed by the site CA.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The tls_cacertdir or tls_cacertfile directives are required when tls_checkpeer is configured (which is the default for openldap versions 2.1 and up). These directives define the path to the trust certificates signed by the site CA.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
Ensure a copy of the site's CA certificate has been placed in the file "/etc/pki/tls/CA/cacert.pem". Configure LDAP to enforce TLS use and to trust certificates signed by the site's CA. First, edit the file "/etc/pam_ldap.conf", and add or correct either of the following lines: tls_cacertdir /etc/pki/tls/CAor tls_cacertfile /etc/pki/tls/CA/cacert.pemThen review the LDAP server and ensure TLS has been configured.
FIX
}

printid() {
    cat <<"ID"
V-38626
ID
}

