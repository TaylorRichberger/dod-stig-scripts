my $id = 'V-22332';
my $title = 'The /etc/passwd file must be owned by root.';
my $severity = 'medium';
my $description = 'The /etc/passwd file contains the list of local system accounts.  It is vital to system security and must be protected from unauthorized modification.';
my $fix = 'Change the owner of the /etc/passwd file to root.

# chown root /etc/passwd';
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
