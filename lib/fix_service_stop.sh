#!/bin/sh

service="$1"

chkconfig --level 0123456 "$service" off
service "$service" stop
