my $id = 'V-38573';
my $title = 'The system must disable accounts after three consecutive unsuccessful login attempts.';
my $severity = 'medium';
my $description = 'Locking out user accounts after a number of incorrect attempts prevents direct password guessing attacks.';
my $fix = 'To configure the system to lock out accounts after a number of incorrect login attempts using "pam_faillock.so": Add the following lines immediately below the "pam_unix.so" statement in the AUTH section of "/etc/pam.d/system-auth-ac" and "/etc/pam.d/password-auth-ac": auth [default=die] pam_faillock.so authfail deny=3 unlock_time=604800 fail_interval=900auth required pam_faillock.so authsucc deny=3 unlock_time=604800 fail_interval=900Note that any updates made to "/etc/pam.d/system-auth-ac" and "/etc/pam.d/password-auth-ac" will be overwritten by the "authconfig" program.  The "authconfig" program should not be used.';
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
