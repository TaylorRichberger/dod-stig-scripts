my $id = 'V-11988';
my $title = 'There must be no .rhosts, .shosts, hosts.equiv, or shosts.equiv files on the system.';
my $severity = 'high';
my $description = 'The .rhosts, .shosts, hosts.equiv, and shosts.equiv files are used to configure host-based authentication for individual users or the system.  Host-based authentication is not sufficient for preventing unauthorized access to the system.';
my $fix = 'Remove the .rhosts, .shosts, hosts.equiv, and/or shosts.equiv files.';
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
