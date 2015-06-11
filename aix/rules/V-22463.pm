my $id = 'V-22463';
my $title = 'The SSH client must be configured to only use Message Authentication Codes (MACs) employing FIPS 140-2 approved cryptographic hash algorithms.';
my $severity = 'medium';
my $description = 'DoD information systems are required to use FIPS 140-2 approved cryptographic hash functions.';
my $fix = 'Edit the SSH client configuration and remove any MACs other than hmac-sha1.  If necessary, add a MACs line.';
my $autotest = 1;
my $autofix = 0;

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
    return STIG::FileShouldContain('/etc/ssh/sshd_config', qr/^MACs\s+hmac-sha1$/);
}

sub fix()
{
    return 0;
}

1;
