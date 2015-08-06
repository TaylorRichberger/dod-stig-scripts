#!/bin/sh

./lib/test_sysctl.sh net.ipv4.conf.all.rp_filter 1
exit $?
