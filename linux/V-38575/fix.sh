#!/bin/sh

bits=32

if uname -p | grep -qF 64; then
    bits=64
fi

cat >>/etc/audit.rules <<HERE
-a always,exit -F arch=b$bits -S unlink -S unlinkat -S rename -S renameat -F auid>=500 -F auid!=4294967295 -k delete
-a always,exit -F arch=b$bits -S unlink -S unlinkat -S rename -S renameat -F auid=0 -k delete
HERE

auditctl -R /etc/audit/audit.rules
