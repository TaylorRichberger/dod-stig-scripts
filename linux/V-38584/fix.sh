#!/bin/sh

fix_service_stop.sh xinetd
yum erase xinetd
