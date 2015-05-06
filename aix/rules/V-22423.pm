my $id = 'V-22423';
my $title = 'The inetd.conf file, xinetd.conf file, and the xinetd.d directory must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'Failure to give ownership of sensitive files or utilities to system groups may provide unauthorized users with the potential to access sensitive information or change the system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the group ownership of the inetd configuration file.

Procedure:
# chgrp system /etc/inetd.conf';
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
