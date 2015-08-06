#!/bin/sh

yum install iptables
fix_service_start.sh iptables
