my $id = 'V-23732';
my $title = 'The FTPS/FTP service on the system must be configured with the Department of Defense (DoD) login banner.';
my $severity = 'medium';
my $description = 'Failure to display the login banner prior to a logon attempt will negate legal proceedings resulting from unauthorized access to system resources.

NOTE: SFTP and FTPS are encrypted alternatives to FTP and should be used in place of FTP. SFTP is implemented by the SSH service and uses its banner configuration.';
my $fix = 'Configure the system to display one of the DoD login banners (based on the character limitations imposed by the system) prior to any FTP login attempt.

Add a banner file to the system with the DoD login banner.

#vi /etc/herald
<Add DoD banner to file>
#chmod 644 /etc/herald
#chown root:system /etc/herald

Add a herald line to the /etc/ftpaccess.ctl file.
#vi /etc/ftpaccess.ctl
<add/update line in /etc/ftpaccess.ctl> herald: /etc/herald
#chown root:system /etc/ftpaccess.ctl
#chmod 640 /etc/ftpaccess.ctl

DoD Login Banners:

"You are accessing a U.S. Government (USG) Information System (IS) that is provided for USG-authorized use only.

By using this IS (which includes any device attached to this IS), you consent to the following conditions:

-The USG routinely intercepts and monitors communications on this IS for purposes including, but not limited to, penetration testing, COMSEC monitoring, network operations and defense, personnel misconduct (PM), law enforcement (LE), and counterintelligence (CI) investigations.

-At any time, the USG may inspect and seize data stored on this IS.

-Communications using, or data stored on, this IS are not private, are subject to routine monitoring, interception, and search, and may be disclosed or used for any USG-authorized purpose.

-This IS includes security measures (e.g., authentication and access controls) to protect USG interests--not for your personal benefit or privacy.

-Notwithstanding the above, using this IS does not constitute consent to PM, LE or CI investigative searching or monitoring of the content of privileged communications, or work product, related to personal representation or services by attorneys, psychotherapists, or clergy, and their assistants. Such communications and work product are private and confidential. See User Agreement for details."

OR

"I\'ve read & consent to terms in IS user agreem\'t."';
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
