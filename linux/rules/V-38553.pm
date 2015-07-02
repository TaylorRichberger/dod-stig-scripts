my $id = 'V-38553';
my $title = 'The operating system must prevent public IPv6 access into an organizations internal networks, except as appropriately mediated by managed interfaces employing boundary protection devices.';
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
