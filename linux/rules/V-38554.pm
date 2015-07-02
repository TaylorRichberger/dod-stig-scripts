my $id = 'V-38554';
my $title = 'The audit system must be configured to audit all discretionary access control permission modifications using fchownat.';
my $severity = 'low';
my $description = 'The changing of file permissions could indicate that a user is attempting to gain access to information that would otherwise be disallowed. Auditing DAC modifications can facilitate the identification of patterns of abuse among both authorized and unauthorized users.';
my $fix = 'At a minimum, the audit system should collect file permission changes for all users and root. Add the following to "/etc/audit/audit.rules": -a always,exit -F arch=b32 -S fchownat -F auid>=500 -F auid!=4294967295 \-k perm_mod-a always,exit -F arch=b32 -S fchownat -F auid=0 -k perm_modIf the system is 64-bit, then also add the following: -a always,exit -F arch=b64 -S fchownat -F auid>=500 -F auid!=4294967295 \-k perm_mod-a always,exit -F arch=b64 -S fchownat -F auid=0 -k perm_mod';
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
