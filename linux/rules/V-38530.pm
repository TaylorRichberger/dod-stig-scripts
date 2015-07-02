my $id = 'V-38530';
my $title = 'The audit system must be configured to audit all attempts to alter system time through /etc/localtime.';
my $severity = 'low';
my $description = 'Arbitrary changes to the system time can be used to obfuscate nefarious activities in log files, as well as to confuse network services that are highly dependent upon an accurate system time (such as sshd). All changes to the system time should be audited.';
my $fix = 'Add the following to "/etc/audit/audit.rules": -w /etc/localtime -p wa -k audit_time_rulesThe -k option allows for the specification of a key in string form that can be used for better reporting capability through ausearch and aureport and should always be used.';
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
