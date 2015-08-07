#!/bin/sh

if [ -e /etc/pam_ldap.conf ]; then
    sed -i '/^[[:space:]]*tls_cacertdir[[:space:]]/d' /etc/pam_ldap.conf
    sed -i '/^[[:space:]]*tls_cacertfile[[:space:]]/d' /etc/pam_ldap.conf
    echo 'tls_cacertdir /etc/pki/tls/CA' >> /etc/pam_ldap.conf
fi
