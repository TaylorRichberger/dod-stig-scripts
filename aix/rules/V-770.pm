my $id = 'V-770';
my $title = 'The system must not have accounts configured with blank or null passwords.';
my $severity = 'high';
my $description = 'If an account is configured for password authentication but does not have an assigned password, it may be possible to log into the account without authentication.  If the root user is configured without a password, the entire system may be compromised.  For user accounts not using password authentication, the account must be configured with a password lock value instead of a blank or null value.  ';
my $fix = 'Remove or configure a password for any account with a blank password.  

# passwd <user id>
# smitty passwd

To remove an account with a blank password.
# smitty rmuser';
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
