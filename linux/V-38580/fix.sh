#!/bin/sh

bits=32

if uname -p | grep -qF 64; then
    bits=64
fi

cat >>/etc/audit/audit.rules <<HERE
-w /sbin/insmod -p x -k modules
-w /sbin/rmmod -p x -k modules
-w /sbin/modprobe -p x -k modules
-a always,exit -F arch=b$bits -S init_module -S delete_module -k modules
HERE

auditctl -R /etc/audit/audit.rules
