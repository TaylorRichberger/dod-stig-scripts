#!/bin/sh
printfix() {
    cat <<"FIX"
The "bluetooth" service can be disabled with the following command: # chkconfig bluetooth off# service bluetooth stop
FIX
}

printtitle() {
    cat <<"TITLE"
The Bluetooth service must be disabled.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printid() {
    cat <<"ID"
V-38691
ID
}

printdescription() {
    cat <<"DESCRIPTION"
Disabling the "bluetooth" service prevents the system from attempting connections to Bluetooth devices, which entails some security risk. Nevertheless, variation in this risk decision may be expected due to the utility of Bluetooth connectivity and its limited range.
DESCRIPTION
}

