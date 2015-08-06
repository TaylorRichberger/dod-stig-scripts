#!/bin/sh

./lib/test_sysctl.sh net.ipv4.conf.all.accept_martians 1
exit $?
