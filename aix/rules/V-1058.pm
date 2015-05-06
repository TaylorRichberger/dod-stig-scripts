my $id = 'V-1058';
my $title = 'The /var/private/smbpasswd file must be group-owned by sys or system.';
my $severity = 'medium';
my $description = 'If the smbpasswd file is not group-owned by root, the smbpasswd file may be maliciously accessed or modified, potentially resulting in the compromise of Samba accounts.';
my $fix = 'Use the chgrp command to change  the group owner of the smbpasswd file to system. 

# chgrp system /var/private/smbpasswd';
my $auto = 0;

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

sub auto()
{
    return $auto;
}

sub test()
{
    return 0;
}

sub fix()
{
    return 0;
}
