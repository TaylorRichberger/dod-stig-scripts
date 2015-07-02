my $id = 'V-38574';
my $title = 'The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (system-auth).';
my $severity = 'medium';
my $description = 'Using a stronger hashing algorithm makes password cracking attacks more difficult.';
my $fix = 'In "/etc/pam.d/system-auth", the "password" section of the file controls which PAM modules execute during a password change. Set the "pam_unix.so" module in the "password" section to include the argument "sha512", as shown below: password sufficient pam_unix.so sha512 [other arguments...]This will help ensure when local users change their passwords, hashes for the new passwords will be generated using the SHA-512 algorithm. This is the default.Note that any updates made to "/etc/pam.d/system-auth" will be overwritten by the "authconfig" program.  The "authconfig" program should not be used.';
my $autotest = 0;
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
    return 0;
}

sub fix()
{
    return 0;
}
