my $id = 'V-4361';
my $title = 'The cron.allow file must be owned by root, bin, or sys.';
my $severity = 'medium';
my $description = 'If the owner of the cron.allow file is not set to root, bin, or sys, the possibility exists for an unauthorized user to view or to edit sensitive information.';
my $fix = '# chown root /var/adm/cron/cron.allow';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/adm/cron/cron.allow';

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
