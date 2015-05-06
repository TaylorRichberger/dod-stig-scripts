my $id = 'V-788';
my $title = 'All skeleton files (typically those in /etc/skel) must have mode 0644 or less permissive.';
my $severity = 'medium';
my $description = 'If the skeleton files are not protected, unauthorized personnel could change user startup parameters and possibly jeopardize user files.

';
my $fix = 'Change the mode of skeleton files with incorrect mode.
# chmod 0644 /etc/security/.profile  
#chmod 0755 /etc/security/mkuser.sys';
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
