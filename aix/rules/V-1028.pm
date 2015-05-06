my $id = 'V-1028';
my $title = 'The /usr/lib/smb.conf file must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'If the smb.conf file has excessive permissions, the file may be maliciously modified and the Samba configuration could be compromised.';
my $fix = 'Change the mode of the smb.conf file to 0644 or less permissive.

Procedure:
# chmod 0644 /usr/lib/smb.conf';
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
