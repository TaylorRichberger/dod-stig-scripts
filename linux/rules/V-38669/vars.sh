#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
The Postfix mail transfer agent is used for local mail delivery within the system. The default configuration only listens for connections to the default SMTP port (port 25) on the loopback interface (127.0.0.1). It is recommended to leave this service enabled for local mail delivery. The "postfix" service can be enabled with the following command: # chkconfig postfix on# service postfix start
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Local mail delivery is essential to some system maintenance and notification tasks.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The postfix service must be enabled for mail delivery.
TITLE
}

printid() {
    cat <<"ID"
V-38669
ID
}

