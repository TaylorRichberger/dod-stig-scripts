my $id = 'V-4701';
my $title = 'The system must not have the finger service active.';
my $severity = 'low';
my $description = 'The finger service provides information about the system\'s users to network clients.  This information could expose information that could be used in subsequent attacks.
';
my $fix = 'Edit /etc/inetd.conf and comment out the finger service line.  Restart the inetd service.';
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
