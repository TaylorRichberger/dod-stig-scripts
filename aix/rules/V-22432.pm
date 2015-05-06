my $id = 'V-22432';
my $title = 'The rlogind service must not be running.';
my $severity = 'medium';
my $description = 'The rlogind process provides a typically unencrypted, host-authenticated remote access service.  SSH should be used in place of this service.';
my $fix = 'Disable the rlogind service out of the \'/etc/inetd.conf\' file.
# vi  /etc/inetd.conf 
Comment out the rlogind service. Restart the inetd service.  
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
