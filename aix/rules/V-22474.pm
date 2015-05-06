my $id = 'V-22474';
my $title = 'The SSH client must not permit GSSAPI authentication unless needed.';
my $severity = 'low';
my $description = 'GSSAPI authentication is used to provide additional authentication mechanisms to applications. Allowing GSSAPI authentication through SSH exposes the systemâ€™s GSSAPI to remote hosts, increasing the attack surface of the system.  GSSAPI authentication must be disabled unless needed.';
my $fix = 'Edit the /etc/ssh/ssh_config file and remove the GSSAPIAuthentication setting or change the GSSAPIAuthentication setting to "no".';
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
