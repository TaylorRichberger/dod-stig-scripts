my $id = 'V-22553';
my $title = 'The system must not forward IPv6 source-routed packets.';
my $severity = 'medium';
my $description = 'Source-routed packets allow the source of the packet to suggest routers forward the packet along a different path than configured on the router, which can be used to bypass network security measures. This requirement applies only to the forwarding of source-routed traffic, such as when IPv6 forwarding is enabled and the system is functioning as a router. ';
my $fix = 'Configure the system so it does not forward IPv6 source-routed packets.  
# /usr/sbin/no -p -o ip6srcrouteforward=0';
my $autotest = 1;
my $autofix = 1;

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
    return STIG::TunableShouldNotExceed('ip6srcrouteforward', 0);
}

sub fix()
{
    return `/usr/sbin/no -po 'ip6srcrouteforward=0'`;
}

1;
