#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Although systems management and patching is extremely important to system security, management by a system outside the enterprise enclave is not desirable for some environments. However, if the system is being managed by RHN or RHN Satellite Server the "rhnsd" daemon can remain on.
DESCRIPTION
}

printid() {
    cat <<"ID"
V-38478
ID
}

printfix() {
    cat <<"FIX"
The Red Hat Network service automatically queries Red Hat Network servers to determine whether there are any actions that should be executed, such as package updates. This only occurs if the system was registered to an RHN server or satellite and managed as such. The "rhnsd" service can be disabled with the following commands: # chkconfig rhnsd off# service rhnsd stop
FIX
}

printtitle() {
    cat <<"TITLE"
The Red Hat Network Service (rhnsd) service must not be running, unless using RHN or an RHN Satellite.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

