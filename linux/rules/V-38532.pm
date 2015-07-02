my $id = 'V-38532';
my $title = 'The system must not accept ICMPv4 secure redirect packets by default.';
my $severity = 'medium';
my $description = 'Accepting "secure" ICMP redirects (from those gateways listed as default gateways) has few legitimate uses. It should be disabled unless it is absolutely required.';
my $fix = 'To set the runtime status of the "net.ipv4.conf.default.secure_redirects" kernel parameter, run the following command: # sysctl -w net.ipv4.conf.default.secure_redirects=0If this is not the system\'s default value, add the following line to "/etc/sysctl.conf": net.ipv4.conf.default.secure_redirects = 0';
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
