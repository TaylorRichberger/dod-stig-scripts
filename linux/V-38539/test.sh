#!/bin/sh

./lib/test_sysctl.sh net.ipv4.tcp_syncookies 1
exit $?
