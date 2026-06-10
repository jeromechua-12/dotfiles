#!/bin/bash

# check if bluetooth is on
bluetoothctl show | grep -iq "powered: yes"
if [ $? -eq 0 ]; then
    # check number of devices connected
    count=$(bluetoothctl devices Connected | wc -l)
    if [ $count -eq 0 ]; then
        echo '{"text": "󰂯", "class": "on", "tooltip": "No device connected"}'
    fi

    if [ $count -eq 1 ]; then
        echo '{"text": "󰂯", "class": "on", "tooltip": "1 device connected"}'
    else
        echo '{"text": "󰂯", "class": "on", "tooltip": "${count} device connected"}'
    fi
else
    echo '{"text": "󰂲", "class": "off", "tooltip": "Bluetooth off"}'
fi
