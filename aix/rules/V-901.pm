my $id = 'V-901';
my $title = 'All users\' home directories must have mode 0750 or less permissive.';
my $severity = 'medium';
my $description = 'Excessive permissions on home directories allow unauthorized access to user\'s files.';
my $fix = 'Change the mode of users\' home directories to 0750 or less permissive.

Procedure (example):
# chmod 0750 <home directory>';
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
