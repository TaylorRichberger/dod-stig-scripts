my $id = 'V-38533';
my $title = 'The system must ignore ICMPv4 redirect messages by default.';
my $severity = 'low';
my $description = 'This feature of the IPv4 protocol has few legitimate uses. It should be disabled unless it is absolutely required.';
my $fix = 'To set the runtime status of the "net.ipv4.conf.default.accept_redirects" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.default.accept_redirects=0If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.default.accept_redirects = 0';
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
