my $id = 'V-38497';
my $title = 'The system must not have accounts configured with blank or null passwords.';
my $severity = 'high';
my $description = 'If an account has an empty password, anyone could log in and run commands with the privileges of that account. Accounts with empty passwords should never be used in operational environments.';
my $fix = 'If an account is configured for password authentication but does not have an assigned password, it may be possible to log into the account without authentication. Remove any instances of the "nullok" option in "/etc/pam.d/system-auth-ac" to prevent logins with empty passwords.';
my $autotest = 0;
my $autofix = 0;

use lib 'lib';
use STIG;

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
