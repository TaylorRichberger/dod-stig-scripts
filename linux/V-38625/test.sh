#!/bin/sh

if [ -e /etc/pam_ldap.conf ] && ! grep -qE '^[[:space:]]*ssl[[:space:]]+start_tls' /etc/pam_ldap.conf; then
    echo 'pam_ldap should authenticate through start_tls'
    exit 1
fi

exit 0
