my $id = 'V-38693';
my $title = 'The system must require passwords to contain no more than three consecutive repeating characters.';
my $severity = 'low';
my $description = 'Passwords with excessive repeating characters may be more vulnerable to password-guessing attacks.';
my $fix = 'The pam_cracklib module\'s "maxrepeat" parameter controls requirements for consecutive repeating characters. Edit the "/etc/pam.d/system-auth" file to include the following line prior to the "password include system-auth-ac" line: password required pam_cracklib.so maxrepeat=3';
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
