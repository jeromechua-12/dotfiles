#!/bin/bash

STATUS=$(bluetoothctl show | grep -iq 'powered: yes')

if [ $? -ne 0 ]; then
    echo true
else
    echo false 
fi
