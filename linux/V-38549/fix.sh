#!/bin/sh

chkconfig ip6tables on
./lib/fix_service_start.sh ip6tables
