#!/bin/sh

service rhnsd stop
chkconfig --level 0123456 rhnsd off
