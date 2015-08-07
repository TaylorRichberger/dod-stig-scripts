#!/bin/sh
printdescription() {
    cat <<"DESCRIPTION"
Adding host-based intrusion detection tools can provide the capability to automatically take actions in response to malicious behavior, which can provide additional agility in reacting to network threats. These tools also often include a reporting capability to provide network awareness of system, which may not otherwise exist in an organization's systems management regime.
DESCRIPTION
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printfix() {
    cat <<"FIX"
The base Red Hat platform already includes a sophisticated auditing system that can detect intruder activity, as well as SELinux, which provides host-based intrusion prevention capabilities by confining privileged programs and user sessions which may become compromised.In DoD environments, supplemental intrusion detection tools, such as, the McAfee Host-based Security System, are available to integrate with existing infrastructure. When these supplemental tools interfere with the proper functioning of SELinux, SELinux takes precedence.   OSSEC should be deployed in ARM environments if McAfee is not available.
FIX
}

printid() {
    cat <<"ID"
V-38667
ID
}

printtitle() {
    cat <<"TITLE"
The system must have a host-based intrusion detection tool installed.
TITLE
}

