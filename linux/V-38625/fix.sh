#!/bin/sh

if [ -e /etc/pam_ldap.conf ]; then
    sed -i '/^[[:space:]]*ssl[[:space:]]/d' /etc/pam_ldap.conf
    echo 'ssl start_tls' >> /etc/pam_ldap.conf
fi
