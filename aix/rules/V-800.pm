my $id = 'V-800';
my $title = 'The /etc/security/passwd file must have mode 0400.';
my $severity = 'medium';
my $description = 'The /etc/security/passwd file contains the list of local system accounts.  It is vital to system security and must be protected from unauthorized modification.  The file also contains password hashes which must not be accessible to users other than root.';
my $fix = 'Change the mode of the /etc/security/passwd file.
# chmod 0400 /etc/security/passwd';
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
