my $id = 'A-10';
my $title = 'The FTP services should not be active';
my $severity = 'col';
my $description = 'Data transmitted over FTP is in the clear.  Transmission of sensitive data should always be encrypted.';
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
