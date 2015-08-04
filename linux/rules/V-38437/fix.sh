#!/bin/sh

service autofs stop
chkconfig --level 0123456 autofs off
