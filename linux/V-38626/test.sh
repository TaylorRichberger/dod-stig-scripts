#!/bin/sh

if [ -e /etc/pam_ldap.conf ] && ! grep -qE '^[[:space:]]*tls_cacert(file|dir)[[:space:]]+/etc/pki/tls/CA' /etc/pam_ldap.conf; then
    echo 'pam_ldap should use the proper cert file'
    exit 1
fi

exit 0
