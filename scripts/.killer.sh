#!/bin/zsh

pid=$(ps -u $USER -o pid,comm | sort -b -k2 -r | sed -n '1!p' | dmenu -i -l 10 | awk '{print $1}')

if [ $pid ]; then
    kill -15 $pid 2>/dev/null
    notify-send "🤖 Process killed!"
fi
