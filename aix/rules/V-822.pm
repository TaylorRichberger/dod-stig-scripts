my $id = 'V-822';
my $title = 'The inetd.conf and xinetd.conf files must have mode 0440 or less permissive.';
my $severity = 'medium';
my $description = 'The Internet service daemon configuration files must be protected as malicious modification could cause Denial of Service or increase the attack surface of the system.';
my $fix = 'Change the mode of the inetd.conf file.
# chmod 0440 /etc/inetd.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/inetd.conf';

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
    return STIG::ModeShouldNotExceed($filename, 0440);
}

sub fix()
{
    return `chmod 0440 $filename`;
}

1;
