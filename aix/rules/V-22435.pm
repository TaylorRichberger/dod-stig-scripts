my $id = 'V-22435';
my $title = 'The hosts.lpd (or equivalent) file must be group-owned by bin, sys, or system.';
my $severity = 'medium';
my $description = 'Failure to give group ownership of  the hosts.lpd file to bin, sys, or system provides the members of the owning group and possible unauthorized users, with the potential to modify the hosts.lpd file.  Unauthorized modifications could disrupt access to local printers from authorized remote hosts or permit unauthorized remote access to local printers.';
my $fix = 'Change the group owner of the hosts.lpd file.

Procedure:
# chgrp sys /etc/hosts.lpd';
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
