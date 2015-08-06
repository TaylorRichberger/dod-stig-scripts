#!/bin/sh
printtitle() {
    cat <<"TITLE"
A login banner must be displayed immediately prior to, or as part of, graphical desktop environment login prompts.
TITLE
}

printseverity() {
    cat <<"SEVERITY"
medium
SEVERITY
}

printdescription() {
    cat <<"DESCRIPTION"
An appropriate warning message reinforces policy awareness during the logon process and facilitates possible legal action against attackers.
DESCRIPTION
}

printfix() {
    cat <<"FIX"
To enable displaying a login warning banner in the GNOME Display Manager's login screen, run the following command: # gconftool-2 --direct \--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \--type bool \--set /apps/gdm/simple-greeter/banner_message_enable trueTo display a banner, this setting must be enabled and then banner text must also be set.
FIX
}

printid() {
    cat <<"ID"
V-38688
ID
}

