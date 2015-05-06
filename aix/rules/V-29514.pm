my $id = 'V-29514';
my $title = 'The inetd time service must not be active on the system on the inetd daemon.';
my $severity = 'medium';
my $description = 'The time service is an internal inetd function is used by the rdate command.  This service is sometimes used to synchronize clocks at boot time.   The service is outdated.   Use the ntpdate command instead.';
my $fix = 'Edit the /etc/inetd.conf file and comment out the time service line. 

Restart the inetd service.   
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
