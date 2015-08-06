my $id = 'V-23741';
my $title = 'TCP backlog queue sizes must be set appropriately.';
my $severity = 'medium';
my $description = 'To provide some mitigation to TCP DoS attacks, the clear_partial_conns parameter must be enabled.';
my $fix = '# /usr/sbin/no -po clean_partial_conns=1';
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
    return STIG::TunableShouldBeAtLeast('clean_partial_conns', 1);
}

sub fix()
{
    return `/usr/sbin/no -po 'clean_partial_conns=1'`;
}

1;
