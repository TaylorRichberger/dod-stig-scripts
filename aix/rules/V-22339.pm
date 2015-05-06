my $id = 'V-22339';
my $title = 'The /etc/security/passwd file must be group-owned by security, bin, sys, or system.';
my $severity = 'medium';
my $description = 'The /etc/security/passwd file contains the list of local system accounts.  It is vital to system security and must be protected from unauthorized modification.  The file also contains password hashes which must not be accessible to users other than root.';
my $fix = 'Change the group owner of the /etc/security/passwd file to security, bin, sys, or system.

Procedure:
# chgrp security /etc/security/passwd';
my $autotest = 0;
my $autofix = 0;

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

1;
