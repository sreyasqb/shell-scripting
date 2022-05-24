#!/bin/bash

dir=d
len=2
x=0
y=0
function cleanup() {
    tput cnorm
}

trap cleanup EXIT

tput civis


# Minimum required changes to terminal.  Add -echo to avoid output to screen.


while true; do
    if read -t 0; then # Input ready
        
        read -n 1 char
        printf '\b '
        
        # echo -e "\nRead: $char\n"
        dir=$char
        # echo $dir

    else # No input
        # sleep 100

        if [[ $dir == d ]]; then
            printf '\r' #carriage return
            printf ' %.s' $(seq 1 $x)
            printf '[]%.s' $(seq 1 $len) #prints in increment wise
            printf '=O'
            # printf $i
            ((x += 1)) #increments i
            sleep 0.2  #sleeps the time

        fi

        if [[ $dir == s ]]; then
            printf '\n' $(seq 1 $y)
            printf ' %.s' $(seq 1 $(( $x + $len*2 )))
            printf '0'
            ((y += 1))
            sleep 0.2
        fi
    fi
done

