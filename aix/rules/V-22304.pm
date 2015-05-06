my $id = 'V-22304';
my $title = 'The password hashes stored on the system must have been generated using a FIPS 140-2 approved cryptographic hashing algorithm.';
my $severity = 'medium';
my $description = 'Systems must employ cryptographic hashes for passwords using the SHA-2 family of algorithms or FIPS 140-2 approved successors. The use of unapproved algorithms may result in weak password hashes that are more vulnerable to compromise.';
my $fix = 'Change the passwords for all accounts using non-compliant password hashes. 

# passwd account
OR
# smitty passwd

(This requires that GEN000590 is already met.)';
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
