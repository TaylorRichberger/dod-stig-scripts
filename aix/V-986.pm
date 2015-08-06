my $id = 'V-986';
my $title = 'Default system accounts (with the exception of root) must not be listed in the at.allow file or must be included in the at.deny file if the at.allow file does not exist.';
my $severity = 'medium';
my $description = 'Default accounts, such as bin, sys, adm, uucp, daemon, and others, should never have access to the at facility.  This would create a possible vulnerability open to intruders or malicious users.';
my $fix = 'Remove the default accounts (such as bin, sys, adm, and others) from the at.allow file.';
my $autotest = 1;
my $autofix = 1;
my $allow = '/var/adm/cron/at.allow';
my $deny = '/var/adm/cron/at.deny';

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
    if (-e $allow)
    {
        return STIG::FileShouldNotContain($allow, qr/^(bin|sys|adm|uucp|daemon)$/);
    } else
    {
        my $output = '';
        $output .= STIG::FileShouldExist($deny);
        $output .= STIG::FileShouldContain($deny, qr/^bin$/);
        $output .= STIG::FileShouldContain($deny, qr/^sys$/);
        $output .= STIG::FileShouldContain($deny, qr/^adm$/);
        $output .= STIG::FileShouldContain($deny, qr/^uucp$/);
        $output .= STIG::FileShouldContain($deny, qr/^daemon$/);
        return $output;
    }
}

sub fix()
{
    if (-e $allow)
    {
        return STIG::sedi($allow, '/^\(bin\|sys\|adm\|uucp\|daemon\)$/d');
    } else
    {
        open(my $file, '>>', $deny);

        print($file "\n");
        print($file "bin\n");
        print($file "sys\n");
        print($file "adm\n");
        print($file "uucp\n");
        print($file "daemon\n");
        close($file);
    }
}

1;
