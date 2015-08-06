#!/bin/sh

yum install iptables
./lib/fix_service_start.sh iptables
