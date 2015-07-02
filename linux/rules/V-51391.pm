my $id = 'V-51391';
my $title = 'A file integrity baseline must be created.';
my $severity = 'medium';
my $description = 'For AIDE to be effective, an initial database of "known-good" information about files must be captured and it should be able to be verified against the installed files. ';
my $fix = 'Run the following command to generate a new database:# /usr/sbin/aide --initBy default, the database will be written to the file "/var/lib/aide/aide.db.new.gz". Storing the database, the configuration file "/etc/aide.conf", and the binary "/usr/sbin/aide" (or hashes of these files), in a secure location (such as on read-only media) provides additional assurance about their integrity. The newly-generated database can be installed as follows:# cp /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gzTo initiate a manual check, run the following command:# /usr/sbin/aide --checkIf this check produces any unexpected output, investigate. ';
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
