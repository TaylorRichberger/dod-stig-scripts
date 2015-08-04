#!/bin/sh

mapfile="$(postconf alias_maps | sed 's/^[^\/]*//')"
echo "root: <system.administrator>@$(hostname -d)">>"$mapfile"
newaliases
