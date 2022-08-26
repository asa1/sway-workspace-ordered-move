#!/bin/bash
#Jumps to a sway workspace by the order listed in the bar (i.e. 2 will go to the second workspace in the list, regardles sof the name/number of that workspace)
arg=$1
i=1
for x in $(swaymsg -t get_workspaces|grep name|grep -oe '[[:digit:]]'); do
        if (( i == arg )); then
                swaymsg workspace number "$x"
        fi
        i=$((i+1))
done
