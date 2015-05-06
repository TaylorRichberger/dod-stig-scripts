my $id = 'V-4688';
my $title = 'The rexec daemon must not be running.';
my $severity = 'high';
my $description = 'The rexecd process provides a typically unencrypted, host-authenticated remote access service.  SSH should be used in place of this service.';
my $fix = 'Edit /etc/inetd.conf and comment out the line for the rexec service.  
Refresh the inetd daemon.
# refresh -s inetd';
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
