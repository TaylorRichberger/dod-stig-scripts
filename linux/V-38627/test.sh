#!/bin/sh

if rpm -q openldap-servers >/dev/null 2>&1; then
    echo 'openldap-servers should not be installed if it is not being used'
    exit 1
fi

exit 0
