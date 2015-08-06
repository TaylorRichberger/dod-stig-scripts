my $id = 'V-29495';
my $title = 'The system must not allow directed broadcasts to gateway.';
my $severity = 'medium';
my $description = 'Disabling directed broadcast prevents packets directed to a gateway to be broadcasted on a remote network.';
my $fix = 'Configure directed_broadcast  to 0.

# /usr/sbin/no -p -o directed_broadcast=0';
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
    return STIG::TunableShouldNotExceed('directed_broadcast', 0);
}

sub fix()
{
    return `/usr/sbin/no -po 'directed_broadcast=0'`;
}

1;
