my $id = 'V-987';
my $title = 'The at.allow file must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'Permissions more permissive than 0600 (read, write and execute for the owner) may allow unauthorized or malicious access to the at.allow and/or at.deny files.
';
my $fix = 'Change the mode of the at.allow file.
# chmod 0600 /var/adm/cron/at.allow';
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
