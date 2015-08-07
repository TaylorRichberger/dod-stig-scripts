#!/bin/sh

sed -i -e 's/^\(password.*pam_unix.so.*\)\(remember=[0-9]*\)/\1/g' -e 's/password.*pam_unix.so/& remember=24/' /etc/pam.d/system-auth
