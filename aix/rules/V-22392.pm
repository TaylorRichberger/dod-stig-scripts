my $id = 'V-22392';
my $title = 'The at.deny file must have mode 0640 or less permissive.';
my $severity = 'medium';
my $description = ' The at daemon control files restrict access to scheduled job manipulation and must be protected. Unauthorized modification of the at.deny file could result in Denial of Service to authorized at users or provide unauthorized users with the ability to run at jobs.';
my $fix = 'Change the mode of the at.deny file to 0640.
# chmod 0640 /var/adm/cron/at.deny';
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
