#!/bin/sh

bits=32

if uname -p | grep -qF 64; then
    bits=64
fi

cat >>/etc/audit/audit.rules <<HERE
-a always,exit -F arch=b$bits -S chown -F auid>=500 -F auid!=4294967295 -k perm_mod
-a always,exit -F arch=b$bits -S chown -F auid=0 -k perm_mod
HERE

auditctl -R /etc/audit/audit.rules
