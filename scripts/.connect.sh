#!/bin/zsh

ssid=$(nmcli device wifi list | sed -n '1!p' | cut -b 9- | dmenu -p "Select network:" -l 10 | cut -d' ' -f1)

if [ $ssid ]; then
    pass=$(echo "" | dmenu -p "Enter password:")
    if [ $pass ]; then
        nmcli device wifi connect $ssid password $pass
        notify-send "🤖 Connected!"
    fi
fi

