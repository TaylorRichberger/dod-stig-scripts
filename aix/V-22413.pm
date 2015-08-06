my $id = 'V-22413';
my $title = 'The system must prevent local applications from generating source-routed packets.';
my $severity = 'medium';
my $description = 'Source-routed packets allow the source of the packet to suggest routers forward the packet along a different path than configured on the router, which can be used to bypass network security measures.';
my $fix = '# /usr/sbin/no -po "ipsrcroutesend=0"';
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
    return STIG::TunableShouldNotExceed('ipsrcroutesend', 0);
}

sub fix()
{
    return `/usr/sbin/no -po 'ipsrcroutesend=0'`;
}

1;
