my $id = 'V-38576';
my $title = 'The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (login.defs).';
my $severity = 'medium';
my $description = 'Using a stronger hashing algorithm makes password cracking attacks more difficult.';
my $fix = 'In "/etc/login.defs", add or correct the following line to ensure the system will use SHA-512 as the hashing algorithm: ENCRYPT_METHOD SHA512';
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
