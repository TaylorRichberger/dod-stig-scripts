my $id = 'V-986';
my $title = 'Default system accounts (with the exception of root) must not be listed in the at.allow file or must be included in the at.deny file if the at.allow file does not exist.';
my $severity = 'medium';
my $description = 'Default accounts, such as bin, sys, adm, uucp, daemon, and others, should never have access to the at facility.  This would create a possible vulnerability open to intruders or malicious users.';
my $fix = 'Remove the default accounts (such as bin, sys, adm, and others) from the at.allow file.';
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
