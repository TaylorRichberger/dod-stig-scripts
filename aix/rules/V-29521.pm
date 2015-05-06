my $id = 'V-29521';
my $title = 'The /etc/ftpaccess.ctl file must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'If the ftpaccess.ctl file is not group-owned by a system group, an unauthorized user may modify the file to allow unauthorized access to modify the file. Unauthorized modification could result in Denial of Service to authorized FTP users or permit unauthorized access to system information.';
my $fix = 'Change the group owner of the /etc/ftpaccess.ctl file.

# chgrp system /etc/ftpaccess.ctl';
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
