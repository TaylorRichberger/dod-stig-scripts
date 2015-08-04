#!/bin/sh

grep "^log_file" /etc/audit/auditd.conf | sed s/^[^\/]*// | xargs chgrp root
