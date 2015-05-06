my $id = 'V-1027';
my $title = 'The /usr/lib/smb.conf file must be owned by root.';
my $severity = 'medium';
my $description = 'The /usr/lib/smb.conf file allows access to other machines on the network and grants permissions to certain users.  If it is owned by another user, the file may be maliciously modified and the Samba configuration could be compromised.';
my $fix = 'Change the ownership of the smb.conf file.

Procedure:
# chown root /usr/lib/smb.conf';
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
