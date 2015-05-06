my $id = 'V-22394';
my $title = 'The cron.deny file must be group-owned by system, bin, sys, or cron.';
my $severity = 'medium';
my $description = 'Cron daemon control files restrict the scheduling of automated tasks and must be protected.  Unauthorized modification of the cron.deny file could result in Denial of Service to authorized cron users or could provide unauthorized users with the ability to run cron jobs.';
my $fix = 'Change the group owner of the cron.deny file to sys, system, bin, or cron.

Procedure:
# chgrp cron /var/adm/cron/cron.deny';
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
