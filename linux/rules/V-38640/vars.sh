#!/bin/sh
printid() {
    cat <<"ID"
V-38640
ID
}

printseverity() {
    cat <<"SEVERITY"
low
SEVERITY
}

printtitle() {
    cat <<"TITLE"
The Automatic Bug Reporting Tool (abrtd) service must not be running.
TITLE
}

printfix() {
    cat <<"FIX"
The Automatic Bug Reporting Tool ("abrtd") daemon collects and reports crash data when an application crash is detected. Using a variety of plugins, abrtd can email crash reports to system administrators, log crash reports to files, or forward crash reports to a centralized issue tracking system such as RHTSupport. The "abrtd" service can be disabled with the following commands: # chkconfig abrtd off# service abrtd stop
FIX
}

printdescription() {
    cat <<"DESCRIPTION"
Mishandling crash data could expose sensitive information about vulnerabilities in software executing on the local machine, as well as sensitive information from within a process's address space or registers.
DESCRIPTION
}

