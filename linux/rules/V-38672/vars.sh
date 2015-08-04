#!/bin/sh
printfix() {
    cat <<"FIX"
The "netconsole" service is responsible for loading the netconsole kernel module, which logs kernel printk messages over UDP to a syslog server. This allows debugging of problems where disk logging fails and serial consoles are impractical. The "netconsole" service can be disabled with the following commands: # chkconfig netconsole off# service netconsole stop
FIX
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printid() {
    cat <<"ID"
V-38672
ID
}

printdescription() {
    cat <<"DESCRIPTION"
The "netconsole" service is not necessary unless there is a need to debug kernel panics, which is not common.
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
The netconsole service must be disabled unless required.
TITLE
}

