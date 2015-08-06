my $id = 'A-20';
my $title = 'Disallow Remote Printing';
my $severity = 'col';
my $description = 'External access to AIX printer resources should not be allowed.  It can be allowed from the local machine.';
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
