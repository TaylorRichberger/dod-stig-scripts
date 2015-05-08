my $id = 'V-4430';
my $title = 'The cron.deny file must be owned by root, bin, or sys.';
my $severity = 'medium';
my $description = 'Cron daemon control files restrict the scheduling of automated tasks and must be protected.
';
my $fix = '# chown root /var/adm/cron/cron.deny';
my $autotest = 1;
my $autofix = 1;
my $filename = '/var/adm/cron/cron.deny';

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
