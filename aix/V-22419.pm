my $id = 'V-22419';
my $title = 'The system must be configured to use TCP syncookies when experiencing a TCP SYN flood.';
my $severity = 'medium';
my $description = 'A TCP SYN flood attack can cause Denial of Service by filling a system\'s TCP connection table with connections in the SYN_RCVD state.  Syncookies are a mechanism used to not track a connection until a subsequent ACK is received, verifying the initiator is attempting a valid connection and is not a flood source.  This technique does not operate in a fully standards-compliant manner, but is only activated when a flood condition is detected, and allows defense of the system while continuing to service valid requests.';
my $fix = '#/usr/sbin/no -p -o clean_partial_conns=1';
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
