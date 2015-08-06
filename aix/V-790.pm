my $id = 'V-790';
my $title = 'NIS/NIS+/yp files must be group-owned by sys, bin, other, or system.';
my $severity = 'medium';
my $description = 'NIS/NIS+/yp files are part of the system\'s identification and authentication processes and are, therefore, critical to system security.  Failure to give ownership of sensitive files or utilities to root or bin provides the designated owner and unauthorized users with the potential to access sensitive information or change the system configuration which could weaken the system\'s security posture.';
my $fix = 'Change the group owner of the NIS files to sys, bin, system, or other. 
Procedure:
 # chgrp system < directory>/< file >';
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
