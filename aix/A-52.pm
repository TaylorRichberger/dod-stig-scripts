my $id = 'A-52';
my $title = 'Data at rest encryption - report/load files';
my $severity = 'col';
my $description = 'Report and load files should be stored on remote encrypted mounts';
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
