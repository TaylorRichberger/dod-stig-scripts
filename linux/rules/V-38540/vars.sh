#!/bin/sh
printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The audit system must be configured to audit modifications to the systems network configuration.
TITLE
}

printfix() {
    cat <<"FIX"
Add the following to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: # audit_network_modifications-a always,exit -F arch=ARCH -S sethostname -S setdomainname -k audit_network_modifications-w /etc/issue -p wa -k audit_network_modifications-w /etc/issue.net -p wa -k audit_network_modifications-w /etc/hosts -p wa -k audit_network_modifications-w /etc/sysconfig/network -p wa -k audit_network_modifications
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
The network environment should not be modified by anything other than administrator action. Any change to network parameters should be audited.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38540
ID
}

