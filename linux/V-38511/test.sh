#!/bin/sh

./lib/test_sysctl.sh net.ipv4.ip_forward 0

exit $?
