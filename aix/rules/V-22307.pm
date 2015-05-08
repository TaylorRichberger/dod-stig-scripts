my $id = 'V-22307';
my $title = 'The system must prevent the use of dictionary words for passwords.';
my $severity = 'medium';
my $description = 'An easily guessable password provides an open door to any external or internal malicious intruder. Many computer compromises occur as the result of account name and password guessing. This is generally done by someone with an automated script using repeated logon attempts until the correct account and password pair is guessed. Utilities, such as cracklib, can be used to validate that passwords are not dictionary words and meet other criteria during password changes.
';
my $fix = 'Install the default dictionary of words from the \'bos.data\' fileset with smitty or installp.
# smitty installp
#installp bos.data 

Customize or modify the dictionary in /usr/share/dict/words as necessary.
#vi /usr/share/dict/words

Add a dictionary list to /etc/security/user file with the chsec command.
#chsec -f /etc/security/user -s default -a dictionlist=/usr/share/dict/words';
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
    my $output = '';
    $output .= STIG::FileShouldExist('/usr/share/dict/words');
    $output .= STIG::SecStanzaShouldEqual('/etc/security/user', 'default', 'dictionlist', '/usr/share/dict/words');
    return $output;
}

# Can not fix, because the dictionary needs to be independently installed
sub fix()
{
    return 0;
}

1;
