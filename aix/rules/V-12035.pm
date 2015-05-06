my $id = 'V-12035';
my $title = 'The SYSTEM attribute must not be set to NONE for any account.';
my $severity = 'high';
my $description = 'The SYSTEM attribute in /etc/security/user defines the mechanisms used to authenticate specific user accounts.  If the value is set to NONE, other attributes will be used to determine the authentication mechanisms, but if these attributes are not present, no authentication will be performed.  To ensure authentication is always used for the system\'s accounts, the SYSTEM attribute must always be set to a valid setting other than NONE.';
my $fix = 'Edit /etc/security/user and change any SYSTEM=NONE settings to a valid authentication setting.';
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
