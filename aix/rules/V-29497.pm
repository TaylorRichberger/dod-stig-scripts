my $id = 'V-29497';
my $title = 'The system must provide protection for the TCP stack against connection resets, SYN, and data injection attacks.';
my $severity = 'medium';
my $description = 'The tcp_tcpsecure parameter provides protection for TCP connections from fake SYN\'s, fake RST, and data injections on established connections.  The first vulnerability involves sending a fake SYN to an established connection to abort the connection. The second vulnerability involves sending a fake RST to an established connection to abort the connection. The third vulnerability involves injecting fake data in an established TCP connection.';
my $fix = 'Set the tcp_tcpsecure parameter to 7.

# /usr/sbin/no -p -o tcp_tcpsecure=7';
my $autotest = 0;
my $autofix = 0;

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

1;
