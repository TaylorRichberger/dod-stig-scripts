my $id = 'V-4367';
my $title = 'The at.allow file must be owned by root, bin, or sys.';
my $severity = 'medium';
my $description = 'If the owner of the at.allow file is not set to root, bin, or sys, unauthorized users could be allowed to view or edit sensitive information contained within the file.';
my $fix = 'Change the owner of the at.allow file.
# chown root /var/adm/cron/at.allow';
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
    return STIG::OwnerShouldMatch($filename, qr/^(root|bin|sys)$/);
}

sub fix()
{
    return `chown root $filename`;
}

1;
