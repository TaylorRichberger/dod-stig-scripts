#!/bin/sh

sed -i '/^ttyS[[:digit:]]/d' /etc/securetty
