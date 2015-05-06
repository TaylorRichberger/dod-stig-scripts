my $id = 'V-22335';
my $title = 'The /etc/group file must be owned by root.';
my $severity = 'medium';
my $description = 'The /etc/group file is critical to system security and must be owned by a privileged user.  The group file contains a list of system groups and associated information.';
my $fix = 'Change the owner of the /etc/group file to root.

# chown root /etc/group';
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
