#!/bin/sh

./lib/test_sysctl.sh net.ipv4.conf.all.accept_source_route 0
exit $?
