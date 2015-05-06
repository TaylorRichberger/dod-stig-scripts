my $id = 'V-22488';
my $title = 'The SSH daemon must not allow compression or must only allow compression after successful authentication.';
my $severity = 'medium';
my $description = 'If compression is allowed in an SSH connection prior to authentication, vulnerabilities in the compression software could result in compromise of the system from an unauthenticated connection, potentially with root privileges.';
my $fix = 'Edit the /etc/ssh/sshd_config file and remove the Compression setting or set the Compression setting to "delayed" or "no".';
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
