my $id = 'A-50';
my $title = 'Data at rest encryption - database';
my $severity = 'col';
my $description = 'Jbase/Universe/Cache data encryption should be enabled';
my $fix = '';
my $auto = 0;

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

sub auto()
{
    return $auto;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}
