#!/bin/sh

./lib/test_sysctl.sh net.ipv4.icmp_ignore_bogus_error_responses 1
exit $?
