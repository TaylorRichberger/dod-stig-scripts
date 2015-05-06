my $id = 'V-22462';
my $title = 'The SSH client must be configured to not use CBC-based ciphers.';
my $severity = 'medium';
my $description = 'The Cipher-Block Chaining (CBC) mode of encryption as implemented in the SSHv2 protocol is vulnerable to chosen plain text attacks and must not be used.
';
my $fix = 'Edit /etc/ssh/ssh_config and add or edit the "Ciphers" line.  Only include ciphers that start with "3des" or "aes" and do not contain "cbc".  For the list of available ciphers for the particular version of your software, consult the ssh_config manpage.';
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
