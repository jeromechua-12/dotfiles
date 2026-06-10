#!/bin/bash

STATUS=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -iq 'muted')

if [ $? -ne 1 ]; then
    echo true
else
    echo false
fi
