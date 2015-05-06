my $id = 'V-832';
my $title = 'The alias file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'Excessive permissions on the aliases file may permit unauthorized modification.  If the alias file is modified by an unauthorized user, they may modify the file to run malicious code or redirect email.';
my $fix = 'Change the mode of the /etc/mail/aliases file.

Procedure:
# chmod 0644 /etc/mail/aliases';
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
