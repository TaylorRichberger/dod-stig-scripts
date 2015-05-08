my $id = 'V-22453';
my $title = 'The /etc/syslog.conf file must have mode 0640 or less permissive.';
my $severity = 'medium';
my $description = 'Unauthorized users must not be allowed to access or modify the /etc/syslog.conf file.';
my $fix = 'Change the permissions of the syslog configuration file.
# chmod 0640 /etc/syslog.conf';
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
    return STIG::ModeShouldNotExceed($filename, 0640);
}

sub fix()
{
    return `chmod 0640 $filename`;
}

1;
