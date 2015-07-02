my $id = 'V-38560';
my $title = 'The operating system must connect to external networks or information systems only through managed IPv4 interfaces consisting of boundary protection devices arranged in accordance with an organizational security architecture.';
my $severity = 'medium';
my $description = 'The "iptables" service provides the system\'s host-based firewalling capability for IPv4 and ICMP.';
my $fix = 'The "iptables" service can be enabled with the following commands: # chkconfig iptables on# service iptables start';
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
