my $id = 'V-38546';
my $title = 'The IPv6 protocol handler must not be bound to the network stack unless needed.';
my $severity = 'medium';
my $description = 'Any unnecessary network stacks - including IPv6 - should be disabled, to reduce the vulnerability to exploitation.';
my $fix = 'To prevent the IPv6 kernel module ("ipv6") from loading the IPv6 networking stack, add the following line to "/etc/modprobe.d/disabled.conf" (or another file in "/etc/modprobe.d"): options ipv6 disable=1This permits the IPv6 module to be loaded (and thus satisfy other modules that depend on it), while disabling support for the IPv6 protocol.';
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
