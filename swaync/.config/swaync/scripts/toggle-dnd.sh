#!/bin/bash

STATUS=$(swaync-client -D)

if [ "$STATUS" = 'true' ]; then
    swaync-client -df
else
    swaync-client -dn
fi
