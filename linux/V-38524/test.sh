#!/bin/sh

./lib/test_sysctl.sh net.ipv4.conf.all.accept_redirects 0
exit $?
