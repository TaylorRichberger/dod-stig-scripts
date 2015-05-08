my $id = 'V-4393';
my $title = 'The /etc/syslog.conf file must be owned by root.';
my $severity = 'medium';
my $description = 'If the /etc/syslog.conf file is not owned by root, unauthorized users could be allowed to view, edit, or delete important system messages handled by the syslog facility.';
my $fix = 'Use the chown command to set the owner to root.
# chown root /etc/syslog.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/syslog.conf';

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
    return STIG::OwnerShouldBe($filename, 'root');
}

sub fix()
{
    return `chown root $filename`;
}

1;
