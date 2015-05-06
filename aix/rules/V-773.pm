my $id = 'V-773';
my $title = 'The root account must be the only account having an UID of 0.';
my $severity = 'medium';
my $description = 'If an account has an UID of 0, it has root authority. Multiple accounts with an UID of 0 afford more opportunity for potential intruders to guess a password for a privileged account.';
my $fix = 'Remove or change the UID of accounts other than root that have UID 0.';
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
