#!/bin/sh

# Use this for FCITX5
INPUT=$(qdbus "org.fcitx.Fcitx5" "/controller" "org.fcitx.Fcitx.Controller1.CurrentInputMethod")

if [[ "$INPUT" == "keyboard-us-colemak" ]]; then
    echo "us-colemak"
elif [[ "$INPUT" == "keyboard-us" ]]; then
    echo "us"
elif [[ "$INPUT" == "mozc" ]]; then
    echo "jp"
elif [[ "$INPUT" == "unikey" ]]; then
    echo "vi"
elif [[ "$INPUT" == "" ]]; then
    echo "NONE"
fi
