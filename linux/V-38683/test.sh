#!/bin/sh

if ! pwck -rq; then
    echo 'There is an issue with pwck'
    exit 1
fi

exit 0
