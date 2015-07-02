my $id = 'V-38658';
my $title = 'The system must prohibit the reuse of passwords within twenty-four iterations.';
my $severity = 'medium';
my $description = 'Preventing reuse of previous passwords helps ensure that a compromised password is not reused by a user.';
my $fix = 'Do not allow users to reuse recent passwords. This can be accomplished by using the "remember" option for the "pam_unix" PAM module. In the file "/etc/pam.d/system-auth", append "remember=24" to the line which refers to the "pam_unix.so" module, as shown: password sufficient pam_unix.so [existing_options] remember=24The DoD requirement is 24 passwords.';
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
