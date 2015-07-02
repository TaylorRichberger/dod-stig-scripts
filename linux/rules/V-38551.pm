my $id = 'V-38551';
my $title = 'The operating system must connect to external networks or information systems only through managed IPv6 interfaces consisting of boundary protection devices arranged in accordance with an organizational security architecture. (Compliance can be achieved by disabling IPv6 .. recommended for ARM systems)';
my $severity = 'medium';
my $description = 'The "ip6tables" service provides the system\'s host-based firewalling capability for IPv6 and ICMPv6.';
my $fix = 'The "ip6tables" service can be enabled with the following commands: # chkconfig ip6tables on# service ip6tables start';
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
