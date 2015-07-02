my $id = 'V-38600';
my $title = 'The system must not send ICMPv4 redirects by default.';
my $severity = 'medium';
my $description = 'Sending ICMP redirects permits the system to instruct other systems to update their routing information. The ability to send ICMP redirects is only appropriate for routers.';
my $fix = 'To set the runtime status of the "net.ipv4.conf.default.send_redirects" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.default.send_redirects=0If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.default.send_redirects = 0';
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
