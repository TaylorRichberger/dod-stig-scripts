#!/bin/sh
printtitle() {
    cat <<"TITLE"
The SSH daemon must be configured to use only FIPS 140-2 approved ciphers.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
Limit the ciphers to those algorithms which are FIPS-approved. Counter (CTR) mode is also preferred over cipher-block chaining (CBC) mode. The following line in "/etc/ssh/sshd_config" demonstrates use of FIPS-approved ciphers: Ciphers aes128-ctr,aes192-ctr,aes256-ctr,aes128-cbc,3des-cbc,aes192-cbc,aes256-cbcThe man page "sshd_config(5)" contains a list of supported ciphers.
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Approved algorithms should impart some level of confidence in their implementation. These are also required for compliance.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38617
ID
}

