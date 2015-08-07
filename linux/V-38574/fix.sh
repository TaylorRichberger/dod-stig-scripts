#!/bin/sh

sed -i -e 's/^\(password.*pam_unix.so.*\)\(sha[^[:space:]]*\|md5\)/\1/g' -e 's/password.*pam_unix.so/& sha512/' /etc/pam.d/system-auth
