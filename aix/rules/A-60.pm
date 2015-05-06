my $id = 'A-60';
my $title = 'Database replication services should be controlled.';
my $severity = 'col';
my $description = 'Database replication services should be blocked from all external servers except those directly involved in data replication';
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
