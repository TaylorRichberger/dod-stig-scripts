my $id = 'V-987';
my $title = 'The at.allow file must have mode 0600 or less permissive.';
my $severity = 'medium';
my $description = 'Permissions more permissive than 0600 (read, write and execute for the owner) may allow unauthorized or malicious access to the at.allow and/or at.deny files.
';
my $fix = 'Change the mode of the at.allow file.
# chmod 0600 /var/adm/cron/at.allow';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/adm/cron/at.allow';

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
    return STIG::ModeShouldNotExceed($filename, 0600);
}

sub fix()
{
    return `chmod 0600 $filename`;
}

1;
