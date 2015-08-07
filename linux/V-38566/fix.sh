#!/bin/sh

bits=32

if uname -p | grep -qF 64; then
    bits=64
fi

cat >>/etc/audit/audit.rules <<HERE
-a always,exit -F arch=b$bits -S creat -S open -S openat -S truncate -S ftruncate -F exit=-EACCES -F auid>=500 -F auid!=4294967295 -k access
-a always,exit -F arch=b$bits -S creat -S open -S openat -S truncate -S ftruncate -F exit=-EPERM -F auid>=500 -F auid!=4294967295 -k access
-a always,exit -F arch=b$bits -S creat -S open -S openat -S truncate -S ftruncate -F exit=-EACCES -F auid=0 -k access
-a always,exit -F arch=b$bits -S creat -S open -S openat -S truncate -S ftruncate -F exit=-EPERM -F auid=0 -k access
HERE

auditctl -R /etc/audit/audit.rules
