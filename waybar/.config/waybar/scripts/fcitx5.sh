#!/bin/bash

STATUS=$(fcitx5-remote -n)

if [ "$STATUS" = "keyboard-us" ]; then
    echo '{"text": "EN", "tooltip": "English (US)"}'
fi

if [ "$STATUS" = "pinyin" ]; then
    echo '{"text": "CN", "tooltip": "Chinese (Pinyin)"}'
fi
