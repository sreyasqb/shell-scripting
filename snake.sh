#!/bin/bash
i=0
dir='d'
len=1

# old_tty=$(stty --save)

# Minimum required changes to terminal.  Add -echo to avoid output to screen.
# stty -icanon min 0

while true; do
    if read -t 0; then # Input ready
        read -n 1 char
        echo -e "\nRead: $char\n"
        dir=$char
        echo $dir
        break
    else # No input
        # sleep 100
        if [[$dir='d']] then
        printf '\r' #carriage return
        printf '=O'
        printf '[]%.s' $(seq 1 $len) #prints in increment wise
        # ((i += 1))                 #increments i
        sleep 0.2                  #sleeps the time
    fi
done

# stty $old_tty

