my $id = 'V-38570';
my $title = 'The system must require passwords to contain at least one special character.';
my $severity = 'low';
my $description = 'Requiring a minimum number of special characters makes password guessing attacks more difficult by ensuring a larger search space.';
my $fix = 'The pam_cracklib module\'s "ocredit=" parameter controls requirements for usage of special (or ``other\'\') characters in a password. When set to a negative number, any password will be required to contain that many special characters. When set to a positive number, pam_cracklib will grant +1 additional length credit for each special character. Add "ocredit=-1" after pam_cracklib.so to require use of a special character in passwords.';
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
