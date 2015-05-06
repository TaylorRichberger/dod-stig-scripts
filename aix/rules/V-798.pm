my $id = 'V-798';
my $title = 'The /etc/passwd file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'If the password file is writable by a group owner or the world, the risk of password file compromise is increased.  The password file contains the list of accounts on the system and associated information.';
my $fix = 'Change the mode of the passwd file to 0644.

Procedure:
# chmod 0644 /etc/passwd

Document all changes.';
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
