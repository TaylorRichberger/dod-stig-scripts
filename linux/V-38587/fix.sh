#!/bin/sh

fix_service_stop.sh telnet-server
yum erase telnet-server
