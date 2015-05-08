my $id = 'V-22487';
my $title = 'The SSH daemon must not allow rhosts RSA authentication.';
my $severity = 'medium';
my $description = 'If SSH permits rhosts RSA authentication, a user may be able to log in based on the keys of the host originating the request and not any user-specific authentication.';
my $fix = 'Edit the /etc/ssh/sshd_config file and remove the RhostsRSAAuthentication setting or change the value of the RhostsRSAAuthentication setting to "no".';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/ssh/sshd_config';

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
    return STIG::FileShouldNotContain($filename, qr/RhostsRSAAuthentication\s+yes/);
}

sub fix()
{
    return STIG::sedi($filename, '/RhostsRSAAuthentication/d');;
}

1;
