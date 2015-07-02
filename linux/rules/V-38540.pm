my $id = 'V-38540';
my $title = 'The audit system must be configured to audit modifications to the systems network configuration.';
my $severity = 'low';
my $description = 'The network environment should not be modified by anything other than administrator action. Any change to network parameters should be audited.';
my $fix = 'Add the following to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: # audit_network_modifications-a always,exit -F arch=ARCH -S sethostname -S setdomainname -k audit_network_modifications-w /etc/issue -p wa -k audit_network_modifications-w /etc/issue.net -p wa -k audit_network_modifications-w /etc/hosts -p wa -k audit_network_modifications-w /etc/sysconfig/network -p wa -k audit_network_modifications';
my $autotest = 0;
my $autofix = 0;

use lib 'lib';
use STIG;

sub getId()
{
    return $id;
}

sub getTitle()
{
    return $title;
}

sub getSeverity()
{
    return $severity;
}

sub getDescription()
{
    return $description;
}

sub getFix()
{
    return $fix;
}

sub canTest()
{
    return $autotest;
}

sub canFix()
{
    return $autofix;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}
