my $id = 'V-22462';
my $title = 'The SSH client must be configured to not use CBC-based ciphers.';
my $severity = 'medium';
my $description = 'The Cipher-Block Chaining (CBC) mode of encryption as implemented in the SSHv2 protocol is vulnerable to chosen plain text attacks and must not be used.';
my $fix = 'Edit /etc/ssh/ssh_config and add or edit the "Ciphers" line.  Only include ciphers that start with "3des" or "aes" and do not contain "cbc".  For the list of available ciphers for the particular version of your software, consult the ssh_config manpage.';
my $autotest = 1;
my $autofix = 0;

use lib 'lib';
use STIG;

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
    return STIG::FileShouldNotContain('/etc/ssh/sshd_config', /^Ciphers.+?cbc/);
}

sub fix()
{
    return 0;
}

1;
