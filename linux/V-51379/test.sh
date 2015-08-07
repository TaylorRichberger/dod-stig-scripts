#!/bin/sh

if [ -n "$(ls -RZ /dev | grep unlabeled_t)" ]; then
    echo 'There are unlabed dev files'
    ls -RZ /dev | grep unlabeled_t
    exit 1
fi

exit 0
