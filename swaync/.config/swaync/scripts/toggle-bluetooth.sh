#!/bin/bash

STATUS=$(bluetoothctl show | grep -iq 'powered: yes')

if [ $? -eq 0 ]; then
    bluetoothctl power off
else
    bluetoothctl power on
fi
