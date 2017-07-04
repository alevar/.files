#!/usr/bin/env bash

one=$1
two="$(for ID in $( pgrep chrome ) ; do ( sudo ls -l /proc/$ID/fd|grep Pepper ) && echo /proc/$ID/fd; done | grep -e root | awk -F " " '{print $9}')"
three="$(for ID in $( pgrep chrome ) ; do ( sudo ls -l /proc/$ID/fd|grep Pepper ) && echo /proc/$ID/fd; done | grep -e proc | awk -F "/" '{print $3}')"

sudo cat /proc/$three/fd/$two > $one
