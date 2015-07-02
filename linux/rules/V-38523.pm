my $id = 'V-38523';
my $title = 'The system must not accept IPv4 source-routed packets on any interface.';
my $severity = 'medium';
my $description = 'Accepting source-routed packets in the IPv4 protocol has few legitimate uses. It should be disabled unless it is absolutely required.';
my $fix = 'To set the runtime status of the "net.ipv4.conf.all.accept_source_route" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.all.accept_source_route=0If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.all.accept_source_route = 0';
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
