my $id = 'V-38537';
my $title = 'The system must ignore ICMPv4 bogus error responses.';
my $severity = 'low';
my $description = 'Ignoring bogus ICMP error responses reduces log size, although some activity would not be logged.';
my $fix = 'To set the runtime status of the "net.ipv4.icmp_ignore_bogus_error_responses" kernel parameter, run the following command: # sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.icmp_ignore_bogus_error_responses = 1';
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
