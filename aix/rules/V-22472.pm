my $id = 'V-22472';
my $title = 'The SSH private host key files must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'If an unauthorized user obtains the private SSH host key file, the host could be impersonated.';
my $fix = 'Change the permissions for the SSH private host key files.
# chmod 0600 /etc/ssh/*key';
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
