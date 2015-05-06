my $id = 'A-51';
my $title = 'Data at rest encryption - spool files';
my $severity = 'col';
my $description = 'Printer spool files should be stored on remote encrytped mounts';
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
