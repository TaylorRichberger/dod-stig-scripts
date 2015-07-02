my $id = 'V-38535';
my $title = 'The system must not respond to ICMPv4 sent to a broadcast address.';
my $severity = 'low';
my $description = 'Ignoring ICMP echo requests (pings) sent to broadcast or multicast addresses makes the system slightly more difficult to enumerate on the network.';
my $fix = 'To set the runtime status of the "net.ipv4.icmp_echo_ignore_broadcasts" kernel parameter, run the following command: # sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.icmp_echo_ignore_broadcasts = 1';
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
