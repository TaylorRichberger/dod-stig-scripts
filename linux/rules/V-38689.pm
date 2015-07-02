my $id = 'V-38689';
my $title = 'The Department of Defense (DoD) login banner must be displayed immediately prior to, or as part of, graphical desktop environment login prompts.';
my $severity = 'medium';
my $description = 'An appropriate warning message reinforces policy awareness during the logon process and facilitates possible legal action against attackers.';
my $fix = 'To set the text shown by the GNOME Display Manager in the login screen, run the following command: # gconftool-2--direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type string \--set /apps/gdm/simple-greeter/banner_message_text \"[DoD required text]"Where the DoD required text is either: "You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only. By using this IS (which includes any device attached to this IS), you consent to the following conditions: -The USG routinely intercepts and monitors communications on this IS for purposes including, but not limited to, penetration testing, COMSEC monitoring, network operations and defense, personnel misconduct (PM), law enforcement (LE), and counterintelligence (CI) investigations. -At any time, the USG may inspect and seize data stored on this IS. -Communications using, or data stored on, this IS are not private, are subject to routine monitoring, interception, and search, and may be disclosed or used for any USG-authorized purpose. -This IS includes security measures (e.g., authentication and access controls) to protect USG interests -- not for your personal benefit or privacy. -Notwithstanding the above, using this IS does not constitute consent to PM, LE or CI investigative searching or monitoring of the content of privileged communications, or work product, related to personal representation or services by attorneys, psychotherapists, or clergy, and their assistants. Such communications and work product are private and confidential. See User Agreement for details." OR: "I\'ve read & consent to terms in IS user agreem\'t."When entering a warning banner that spans several lines, remember to begin and end the string with """. This command writes directly to the file "/var/lib/gdm/.gconf/apps/gdm/simple-greeter/%gconf.xml", and this file can later be edited directly if necessary.';
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
