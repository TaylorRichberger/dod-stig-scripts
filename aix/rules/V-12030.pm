my $id = 'V-12030';
my $title = 'The system\'s access control program must be configured to grant or deny system access to specific hosts.';
my $severity = 'medium';
my $description = 'If the system\'s access control program is not configured with appropriate rules for allowing and denying access to system network resources, services may be accessible to unauthorized hosts.';
my $fix = 'Edit the /etc/hosts.allow and /etc/hosts.deny files to configure access restrictions.';
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
