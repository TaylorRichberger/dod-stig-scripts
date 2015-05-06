my $id = 'A-30';
my $title = 'Disallow External Mail Receipt and/or forwarding ';
my $severity = 'col';
my $description = 'External access to e-mail services on the server should not be allowed.  Sendmail should be configured to listen on localhost only or tcp filtering configured to block inbound connections.';
my $fix = '';
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
