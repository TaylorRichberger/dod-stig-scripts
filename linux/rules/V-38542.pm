my $id = 'V-38542';
my $title = 'The system must use a reverse-path filter for IPv4 network traffic when possible on all interfaces.';
my $severity = 'medium';
my $description = 'Enabling reverse path filtering drops packets with source addresses that should not have been able to be received on the interface they were received on. It should not be used on systems which are routers for complicated networks, but is helpful for end hosts and routers serving small networks.';
my $fix = 'To set the runtime status of the "net.ipv4.conf.all.rp_filter" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.all.rp_filter=1If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.all.rp_filter = 1';
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
