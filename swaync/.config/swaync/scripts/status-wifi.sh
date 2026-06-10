#!/bin/bash

STATUS=$(nmcli radio wifi)

if [ "$STATUS" != 'enabled' ]; then
    echo true
else
    echo false
fi
