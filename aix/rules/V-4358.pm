my $id = 'V-4358';
my $title = 'The cron.deny file must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'If file permissions for cron.deny are more permissive than 0600, sensitive information could be viewed or edited by unauthorized users.
';
my $fix = 'Change the mode of the cron.deny file.
# chmod 0600 /var/adm/cron/cron.deny';
my $autotest = 0;
my $autofix = 0;

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

sub canTest()
{
    return $autotest;
}

sub canFix()
{
    return $autofix;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}

1;
