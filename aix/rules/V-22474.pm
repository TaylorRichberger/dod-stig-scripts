my $id = 'V-22474';
my $title = 'The SSH client must not permit GSSAPI authentication unless needed.';
my $severity = 'low';
my $description = 'GSSAPI authentication is used to provide additional authentication mechanisms to applications. Allowing GSSAPI authentication through SSH exposes the systemâ€™s GSSAPI to remote hosts, increasing the attack surface of the system.  GSSAPI authentication must be disabled unless needed.';
my $fix = 'Edit the /etc/ssh/ssh_config file and remove the GSSAPIAuthentication setting or change the GSSAPIAuthentication setting to "no".';
my $autotest = 1;
my $autofix = 0;
my $filename = '/etc/ssh/ssh_config';

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
    return STIG::FileShouldNotContain($filename, qr/GSSAPIAuthentication\s+yes/);
}

sub fix()
{
    return STIG::sedi($filename, '/GSSAPIAuthentication/d');;
;
}

1;
