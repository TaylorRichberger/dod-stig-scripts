#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printfix() {
    cat <<"FIX"
Device files, which are used for communication with important system resources, should be labeled with proper SELinux types. If any device files carry the SELinux type "unlabeled_t", investigate the cause and correct the file's context. 
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
If a device file carries the SELinux type "unlabeled_t", then SELinux cannot properly restrict access to the device file. 
DESCRIPTION
}

printtitle() {
    cat <<"TITLE"
All device files must be monitored by the system Linux Security Module.
TITLE
}

printid() {
    cat <<"ID"
V-51379
ID
}

