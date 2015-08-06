my $id = 'V-22296';
my $title = 'The time synchronization configuration file (such as /etc/ntp.conf) must have mode 0640 or less permissive.';
my $severity = 'medium';
my $description = 'A synchronized system clock is critical for the enforcement of time-based policies and the correlation of logs and audit records with other systems.  If an illicit time source is used for synchronization, the integrity of system logs and the security of the system could be compromised.  If the configuration files controlling time synchronization are not protected, unauthorized modifications could result in the failure of time synchronization.';
my $fix = 'Change the mode of the ntp.conf file to 0640 or less permissive.

# chmod 0640 /etc/ntp.conf';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/ntp.conf';

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
