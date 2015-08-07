#!/bin/sh
printtitle() {
    cat <<"TITLE"
The qpidd service must not be running.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
The qpidd service is automatically installed when the "base" package selection is selected during installation. The qpidd service listens for network connections which increases the attack surface of the system. If the system is not intended to receive AMQP traffic then the "qpidd" service is not needed and should be disabled or removed.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38648
ID
}

printfix() {
    cat <<"FIX"
The "qpidd" service provides high speed, secure, guaranteed delivery services. It is an implementation of the Advanced Message Queuing Protocol. By default the qpidd service will bind to port 5672 and listen for connection attempts. The "qpidd" service can be disabled with the following commands: # chkconfig qpidd off# service qpidd stop
FIX
}

