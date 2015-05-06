my $id = 'A-12';
my $title = 'SMB services should not be active';
my $severity = 'col';
my $description = 'Unless absolutely required, SMB services should not be used on systems at the core of a collections environment.  Instead secure mounts to the AIX system should be provided by an Encrypted linux internal SFTP host.  If SMB must be enabled, it\'s ports should only be allowed from known hosts (such as automation servers)';
my $fix = '';
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
