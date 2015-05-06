my $id = 'V-1029';
my $title = 'The /var/private/smbpasswd file must be owned by root.';
my $severity = 'medium';
my $description = 'If the smbpasswd file is not owned by root, the smbpasswd file may be maliciously accessed or modified, potentially resulting in the compromise of Samba accounts.';
my $fix = 'Change the owner of the smbpasswd file to root.

# chown root /var/private/smbpasswd';
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
