#!/bin/sh

yum install iptables
chkconfig iptables on
service iptables start
