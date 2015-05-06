my $id = 'V-781';
my $title = 'All Group Identifiers (GIDs) referenced in the /etc/passwd file must be defined in the /etc/group file.';
my $severity = 'low';
my $description = 'If a user is assigned the GID of a group that does not exist on the system, and a group with that GID is subsequently created, the user may have unintended rights to the group.
';
my $fix = 'Add a group to the system for each GID referenced without a corresponding group.  

# smitty mkgroup';
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
