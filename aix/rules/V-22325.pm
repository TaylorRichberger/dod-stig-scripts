my $id = 'V-22325';
my $title = 'The /etc/hosts file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'The /etc/hosts file (or equivalent) configures local host name to IP address mappings that typically take precedence over DNS resolution.  If this file is maliciously modified, it could cause the failure or compromise of security functions requiring name resolution, which may include time synchronization, centralized authentication, and remote system logging.';
my $fix = 'Change the mode of the /etc/hosts file to 0644 or less permissive.

# chmod 0644 /etc/hosts';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/hosts';

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
    return STIG::ModeShouldNotExceed($filename, 0644);
}

sub fix()
{
    return `chmod 0644 $filename`;
}

1;
