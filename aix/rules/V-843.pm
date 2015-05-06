my $id = 'V-843';
my $title = 'The ftpusers file must have mode 0640 or less permissive.';
my $severity = 'medium';
my $description = 'Excessive permissions on the ftpusers file could permit unauthorized modification.  Unauthorized modification could result in Denial of Service to authorized FTP users or permit unauthorized users to access the FTP service.';
my $fix = 'Change the mode of the ftpusers file to 0640.
# chmod 0640 /etc/ftpusers';
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
