#!/bin/bash

# xrdb -merge .Xresources
# xinput --disable 12
# xinput --disable 14
# xinput set-prop 9 308 0
setxkbmap -layout us -variant intl -option ctrl:nocaps
# fbsetbg -b -solid black
# xsetroot -name "ACTIVE `cat /proc/meminfo |grep MemAvailable|cut -f2 -d':'|awk '{$1=$1};1'|cut -f1 -d' '|xargs -I % echo %/1024|bc`"
# exec dwm
# xsetroot -solid black
