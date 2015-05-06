my $id = 'V-4385';
my $title = 'The system must not use .forward files.';
my $severity = 'medium';
my $description = 'The .forward file allows users to automatically forward mail to another system. Use of .forward files could allow the unauthorized forwarding of mail and could potentially create mail loops which could degrade system performance.';
my $fix = 'Remove .forward files from the system.';
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
