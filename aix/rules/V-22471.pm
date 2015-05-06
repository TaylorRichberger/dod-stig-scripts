my $id = 'V-22471';
my $title = 'The SSH public host key files must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'If a public host key file is modified by an unauthorized user, the SSH service may be compromised.';
my $fix = 'Change the permissions for the SSH public host key files.
# chmod 0644 /etc/ssh/*key.pub';
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
