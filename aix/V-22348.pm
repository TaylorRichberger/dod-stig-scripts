my $id = 'V-22348';
my $title = 'The /etc/group file must not contain any group password hashes.';
my $severity = 'medium';
my $description = 'Group passwords are typically shared and should not be used.  Additionally, if password hashes are readable by non-administrators, the passwords are subject to attack through lookup tables or cryptographic weaknesses in the hashes.';
my $fix = 'Edit /etc/group and change the password field to an exclamation point (!) to lock the group password.';
my $autotest = 1;
my $autofix = 1;
my $filename = '/etc/group';

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
    my $output = '';
    setgrent();
    while (my @gr = getgrent())
    {
        if ($gr[1] ne '!')
        {
            if ($output)
            {
                $output .= ', ';
            }

            $output .= "Group $gr[0] has password hash set";
        }
    }
    endgrent();
    return $output;
}

sub fix()
{
    return STIG::sedi($filename, 's/^\([^:]*\):[^:]*:/\1:!:/');
}

1;
