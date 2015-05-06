my $id = 'V-22337';
my $title = 'The /etc/group file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'The /etc/group file is critical to system security and must be protected from unauthorized modification.  The group file contains a list of system groups and associated information.';
my $fix = 'Change the mode of the /etc/group file to 0644 or less permissive.
# chmod 0644 /etc/group';
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
