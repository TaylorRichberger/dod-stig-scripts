my $id = 'V-824';
my $title = 'The services file must have mode 0444 or less permissive.';
my $severity = 'medium';
my $description = 'The services file is critical to the proper operation of network services and must be protected from unauthorized modification.  Unauthorized modification could result in the failure of network services.';
my $fix = 'Change the mode of the services file to 0444 or less permissive.

Procedure:
# chmod 0444 /etc/services';
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
