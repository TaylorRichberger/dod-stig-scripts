#!/bin/sh

./lib/test_sysctl.sh net.ipv4.conf.default.rp_filter 1
exit $?
