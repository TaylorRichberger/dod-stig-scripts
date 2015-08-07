#!/bin/sh

sed -i 's/^session.*required.*pam_limits.so.*$/&\nsession required pam_lastlog.so showfailed/' /etc/pam.d/system-auth
