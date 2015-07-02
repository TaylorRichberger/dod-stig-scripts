my $id = 'V-38511';
my $title = 'IP forwarding for IPv4 must not be enabled, unless the system is a router.';
my $severity = 'medium';
my $description = 'IP forwarding permits the kernel to forward packets from one network interface to another. The ability to forward packets between two networks is only appropriate for routers.';
my $fix = 'To set the runtime status of the "net.ipv4.ip_forward" kernel parameter, run the following command: # sysctl -w net.ipv4.ip_forward=0If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.ip_forward = 0';
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
