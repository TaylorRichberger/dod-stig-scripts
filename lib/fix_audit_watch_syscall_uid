#!/bin/sh

syscall="$1"
key="$2"

bits=32

if uname -p | grep -qF 64; then
    bits=64
fi

cat >>/etc/audit/audit.rules <<HERE
-a always,exit -F arch=b$bits -S $syscall -F auid>=500 -F auid!=4294967295 -k $key
-a always,exit -F arch=b$bits -S $syscall -F auid=0 -k $key
HERE

auditctl -R /etc/audit/audit.rules
