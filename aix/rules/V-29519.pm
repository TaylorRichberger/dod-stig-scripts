my $id = 'V-29519';
my $title = 'The /etc/ftpaccess.ctl file must exist.';
my $severity = 'medium';
my $description = 'The ftpaccess.ctl  file contains options for the ftp daemon, such as herald, motd, user access,  and permissions to files and directories. If the ftpaccess.ctl file does not exist, the ftpd process will not display any warning banners, and permissions will only be enforced using basic UNIX permissions. ';
my $fix = 'Create a /etc/ftpaccess.ctl file.
#touch /etc/ftpaccess.ctl

Add at least the herald: /path to login banner to the /etc/ftpaccess.ctl file.

#vi /etc/ftpaccess.ctl';
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
