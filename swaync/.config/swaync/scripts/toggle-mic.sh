#!/bin/bash

STATUS=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -iq 'muted')

if [ $? -eq 1 ]; then
    wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 1
else
    wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0
fi
