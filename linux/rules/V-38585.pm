my $id = 'V-38585';
my $title = 'The system boot loader must require authentication.';
my $severity = 'medium';
my $description = 'Password protection on the boot loader configuration ensures users with physical access cannot trivially alter important bootloader settings. These include which kernel to use, and whether to enter single-user mode.';
my $fix = 'The grub boot loader should have password protection enabled to protect boot-time settings. To do so, select a password and then generate a hash from it by running the following command: # grub-crypt --sha-512When prompted to enter a password, insert the following line into "/etc/grub.conf" immediately after the header comments. (Use the output from "grub-crypt" as the value of [password-hash]): password --encrypted [password-hash]';
my $autotest = 0;
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
    return 0;
}

sub fix()
{
    return 0;
}
