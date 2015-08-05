#!/bin/sh

if postconf >/dev/null 2>&1; then
    mapfile="$(postconf alias_maps | sed 's/^[^\/]*//')"
    if [ -z "$(postmap -q root "$mapfile")" ]; then
        echo "no postconf alias for root"
        exit 1
    fi
fi
exit 0
