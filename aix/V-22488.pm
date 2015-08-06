my $id = 'V-22488';
my $title = 'The SSH daemon must not allow compression or must only allow compression after successful authentication.';
my $severity = 'medium';
my $description = 'If compression is allowed in an SSH connection prior to authentication, vulnerabilities in the compression software could result in compromise of the system from an unauthenticated connection, potentially with root privileges.';
my $fix = 'Edit the /etc/ssh/sshd_config file and remove the Compression setting or set the Compression setting to "delayed" or "no".';
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
    return STIG::FileShouldNotContain($filename, qr/^Compression\s+yes/);
}

sub fix()
{
    return STIG::sedi($filename, 's/^Compression/#&/');;
}

1;
