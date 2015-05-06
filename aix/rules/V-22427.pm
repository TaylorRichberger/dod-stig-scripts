my $id = 'V-22427';
my $title = 'The services file must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'Failure to give ownership of system configuration files to root or a system group provides the designated owner and unauthorized users with the potential to change the system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the group owner of the services file.

Procedure:
# chgrp system /etc/services';
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
