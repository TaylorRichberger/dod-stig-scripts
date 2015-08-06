#!/bin/sh

./lib/test_sysctl.sh net.ipv4.icmp_echo_ignore_broadcasts 1
exit $?
