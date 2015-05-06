my $id = 'A-40';
my $title = 'Disallow sftp';
my $severity = 'col';
my $description = 'SFTP services should not be used on core collections processing systems.  Ideally these activities are passed through an external (to cubs) secured system exclusively responsible for file storage and receipt (file/sftp server).';
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
